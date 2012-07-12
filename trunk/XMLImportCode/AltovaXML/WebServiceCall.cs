//
// WebServiceCall.cs
//
// This file was generated by MapForce 2008r2sp1.
//
// YOU SHOULD NOT MODIFY THIS FILE, BECAUSE IT WILL BE
// OVERWRITTEN WHEN YOU RE-RUN CODE GENERATION.
//
// Refer to the MapForce Documentation for further details.
// http://www.altova.com/mapforce
//

using System;
using System.Text;
using System.Xml;
using System.Net;
using System.Web;
using System.IO;

namespace Altova.Xml
{
	public class WebServiceCall
	{
		public enum CallStyle { UNKNOWN = 0, SOAP_RPC_ENCODED = 1, SOAP_DOCUMENT_LITERAL = 2, HTTP_GET = 3, HTTP_POST = 4 }
        public enum HttpContentType { UNKNOWN = 0, HTTP_URL_ENCODED = 1, HTTP_URL_REPLACEMENT = 2, HTTP_XML = 3 }
		public enum SoapVersion { SOAP11 = 1, SOAP12 = 2}
		private string endpointURL;
		private string soapAction;
		private string encoding;
		private string operationName;
        private string operationLocation;
		private string WSDLTargetNamespace;
		private CallStyle style;
        private HttpContentType contentType;
		private SoapVersion soapVersion;
		private string soapEnvNs = "http://schemas.xmlsoap.org/soap/envelope/";
		private string soapEncNs = "http://schemas.xmlsoap.org/soap/encoding/";
		private string username = "";
        private string password = "";


		public WebServiceCall(string endpointURL, string WSDLTargetNamespace, string operationName, string soapAction, string encoding, CallStyle style, SoapVersion soapVersion)
		{
			this.endpointURL = endpointURL;
			this.soapAction = soapAction;
			this.encoding = encoding;
			this.WSDLTargetNamespace = WSDLTargetNamespace;
			this.operationName = operationName;
			this.style = style;
			this.soapVersion = soapVersion;
			if (soapVersion == SoapVersion.SOAP12)
			{
				soapEnvNs = "http://www.w3.org/2003/05/soap-envelope";
				soapEncNs = "http:// www.w3.org/2003/05/soap-encoding";
			}
		}

		public WebServiceCall(string endpointURL, string opLocation, HttpContentType contentType, string encoding, CallStyle style)
		{
			this.endpointURL = endpointURL;
            this.operationLocation = opLocation;
            this.contentType = contentType;
			this.encoding = encoding;
			this.style = style;
		}

		public void SetCredentials(string u, string p)
        {
            username = u;
            password = p;
        }

		public XmlNode call(XmlNode input)
		{
			XmlNode node = input;
			
			if (style == CallStyle.HTTP_GET || style == CallStyle.HTTP_POST)
            {
				node = input.FirstChild;
				WebRequest conn = null;

                string urlOperation = endpointURL + operationLocation;
                string parameters = "";
				
				if (node != null)
				{
					if (contentType == HttpContentType.HTTP_XML && style == CallStyle.HTTP_POST)
					{
						if (node.ChildNodes.Count > 1)
							throw new Exception ("HTTP POST with text/xml encoding can handle only one part");
						
						System.IO.StringWriter sgwr = new System.IO.StringWriter();
						XmlTextWriter xmlwr = new XmlTextWriter(sgwr);
						xmlwr.Formatting = Formatting.None;
						node.FirstChild.WriteTo(xmlwr);
						parameters = xmlwr.ToString();
					}
					else if (contentType == HttpContentType.HTTP_URL_ENCODED)
					{
						for (int i=0; i< node.ChildNodes.Count; i++)
						{
							if (i > 0)
								parameters += "&";
							parameters += System.Web.HttpUtility.UrlEncode(node.ChildNodes[i].LocalName, Encoding.UTF8);
							parameters += "=";
							parameters += System.Web.HttpUtility.UrlEncode(node.ChildNodes[i].InnerText, Encoding.UTF8);
						}
					}
					else
						throw new Exception ("Unsupported mime type for HTTP binding");
				}
				
                if (style == CallStyle.HTTP_GET)
                {
                    if (parameters.Length > 0)
                        urlOperation += ("?" + parameters);
                    conn = WebRequest.Create(urlOperation);
					conn.Method = "GET";
					if (username.Length != 0 && password.Length !=0)
						conn.Headers["Authorization"] = "Basic " + Convert.ToBase64String(Encoding.UTF8.GetBytes(username + ":" + password));
                }
                else // post
                {
                    conn = WebRequest.Create(urlOperation);
                    conn.Method = "POST";
                    if (contentType == HttpContentType.HTTP_XML)
                        conn.ContentType = "text/xml; charset=" + encoding;
                    else if (contentType == HttpContentType.HTTP_URL_ENCODED)
                        conn.ContentType = "application/x-www-form-urlencoded; charset=UTF-8";
                    else
                        throw new Exception("Unsupported mime type for HTTP binding");

                    byte[] data = Encoding.UTF8.GetBytes(parameters);
                    conn.ContentLength = data.Length;
					if (username.Length != 0 && password.Length !=0)
						conn.Headers["Authorization"] = "Basic " + Convert.ToBase64String(Encoding.UTF8.GetBytes(username + ":" + password));

                    System.IO.Stream rqs = conn.GetRequestStream();
					rqs.Write(data, 0, data.Length);
					rqs.Close();
                }

                HttpWebResponse wre=null;
				try
				{
                    wre = (HttpWebResponse)conn.GetResponse();
				}
				catch (WebException wex)
				{
                    wre = (HttpWebResponse)wex.Response;
				}

                if (wre.StatusCode == HttpStatusCode.OK)
                {
                    XmlDocument respDoc = new XmlDocument();
                    respDoc.Load(wre.GetResponseStream());
					return respDoc;
                }
                else
                    throw new Exception("Failed: " + wre.StatusCode + " " + wre.StatusDescription);
            }
            else if (style == CallStyle.SOAP_RPC_ENCODED || style == CallStyle.SOAP_DOCUMENT_LITERAL)
            {
				byte[] data = Encoding.UTF8.GetBytes(input.OuterXml);
				
				WebRequest conn = WebRequest.Create(endpointURL);
				conn.Method = "POST";
				if (soapVersion == SoapVersion.SOAP12)
				{
					if (soapAction.Length > 0)
						conn.ContentType = "application/soap+xml; action=" + soapAction;
					else
						conn.ContentType = "application/soap+xml";
				}
				else
				{
					conn.ContentType = "text/xml; charset=utf-8";
					conn.Headers["SOAPAction"] = "\"" + soapAction + "\"";
				}
				conn.ContentLength = data.Length;
				if (username.Length != 0 && password.Length !=0)
                    conn.Headers["Authorization"] = "Basic " + Convert.ToBase64String(Encoding.UTF8.GetBytes(username + ":" + password));
				
				
				System.IO.Stream rqs = conn.GetRequestStream();
				rqs.Write(data, 0, data.Length);
				rqs.Close();
				
				WebResponse wre=null;

				try
				{
					wre = conn.GetResponse();
				}
				catch (WebException wex)
				{
					wre = wex.Response;
				}

				XmlDocument respDoc = new XmlDocument();
				respDoc.Load(wre.GetResponseStream());

				// check mustUnderstand
				XmlNodeList headers = respDoc.GetElementsByTagName("Header", soapEnvNs);
				if (headers.Count > 1)
					throw new Exception("more than one SOAPENV:Header found");
				if (headers.Count == 1)
				{
					// if header has any children that have mustUnderstand==1, throw "don' understand"
					for (XmlNode headerNode = headers[0].FirstChild; headerNode != null; headerNode = headerNode.NextSibling)
						if (headerNode.NodeType == XmlNodeType.Element)
						{
							XmlNode muAttr = headerNode.Attributes.GetNamedItem("mustUnderstand", soapEnvNs);
							if (muAttr.Value == "1" || muAttr.Value == "true")
								throw new Exception("Cannot process messages with mustUnderstand headers");
						}
				}
				
				return respDoc;
			}
			else
                throw new Exception("Unsupported style");			
		}
		
		public bool call(XmlNode input, XmlNode output)
		{
			XmlNode node = input;
			
			if (style == CallStyle.HTTP_GET || style == CallStyle.HTTP_POST)
            {
				node = input.FirstChild;
				WebRequest conn = null;

                string urlOperation = endpointURL + operationLocation;
                string parameters = "";
				
				if (node != null)
				{
					if (contentType == HttpContentType.HTTP_XML && style == CallStyle.HTTP_POST)
					{
						if (node.ChildNodes.Count > 1)
							throw new Exception ("HTTP POST with text/xml encoding can handle only one part");
						
						System.IO.StringWriter sgwr = new System.IO.StringWriter();
						XmlTextWriter xmlwr = new XmlTextWriter(sgwr);
						xmlwr.Formatting = Formatting.None;
						node.FirstChild.WriteTo(xmlwr);
						parameters = xmlwr.ToString();
					}
					else if (contentType == HttpContentType.HTTP_URL_ENCODED)
					{
						for (int i=0; i< node.ChildNodes.Count; i++)
						{
							if (i > 0)
								parameters += "&";
							parameters += System.Web.HttpUtility.UrlEncode(node.ChildNodes[i].LocalName, Encoding.UTF8);
							parameters += "=";
							parameters += System.Web.HttpUtility.UrlEncode(node.ChildNodes[i].InnerText, Encoding.UTF8);
						}
					}
					else
						throw new Exception ("Unsupported mime type for HTTP binding");
				}
				
                if (style == CallStyle.HTTP_GET)
                {
                    if (parameters.Length > 0)
                        urlOperation += ("?" + parameters);
                    conn = WebRequest.Create(urlOperation);
					conn.Method = "GET";
					if (username.Length != 0 && password.Length !=0)
						conn.Headers["Authorization"] = "Basic " + Convert.ToBase64String(Encoding.UTF8.GetBytes(username + ":" + password));
                }
                else // post
                {
                    conn = WebRequest.Create(urlOperation);
                    conn.Method = "POST";
                    if (contentType == HttpContentType.HTTP_XML)
                        conn.ContentType = "text/xml; charset=" + encoding;
                    else if (contentType == HttpContentType.HTTP_URL_ENCODED)
                        conn.ContentType = "application/x-www-form-urlencoded; charset=UTF-8";
                    else
                        throw new Exception("Unsupported mime type for HTTP binding");

                    byte[] data = Encoding.UTF8.GetBytes(parameters);
                    conn.ContentLength = data.Length;
					if (username.Length != 0 && password.Length !=0)
						conn.Headers["Authorization"] = "Basic " + Convert.ToBase64String(Encoding.UTF8.GetBytes(username + ":" + password));

                    System.IO.Stream rqs = conn.GetRequestStream();
					rqs.Write(data, 0, data.Length);
					rqs.Close();
                }

                HttpWebResponse wre=null;
				try
				{
                    wre = (HttpWebResponse)conn.GetResponse();
				}
				catch (WebException wex)
				{
                    wre = (HttpWebResponse)wex.Response;
				}

                if (wre.StatusCode == HttpStatusCode.OK)
                {
                    XmlDocument respDoc = new XmlDocument();
                    respDoc.Load(wre.GetResponseStream());
                    output.AppendChild(output.OwnerDocument.ImportNode(respDoc.DocumentElement, true));
                    return true;
                }
                else
                    throw new Exception("Failed: " + wre.StatusCode + " " + wre.StatusDescription);
            }
            else if (style == CallStyle.SOAP_RPC_ENCODED || style == CallStyle.SOAP_DOCUMENT_LITERAL)
            {
				XmlDocument soapDoc = new XmlDocument();
				XmlElement envelope = soapDoc.CreateElement("SOAP-ENV:Envelope", soapEnvNs);
				envelope.SetAttribute("xmlns:SOAP-ENV", soapEnvNs);
				envelope.SetAttribute("xmlns:SOAP-ENC", soapEncNs);
				envelope.SetAttribute("xmlns:xsi", "http://www.w3.org/2001/XMLSchema-instance");
				envelope.SetAttribute("xmlns:xsd", "http://www.w3.org/2001/XMLSchema");

				XmlNode body = soapDoc.CreateElement("SOAP-ENV:Body", soapEnvNs);
				XmlNode header = soapDoc.CreateElement("SOAP-ENV:Header", soapEnvNs);

				if (style == CallStyle.SOAP_RPC_ENCODED)
				{
					// create rpcEnvelope
					XmlElement rpcEnvelope = soapDoc.CreateElement("m:" + operationName, WSDLTargetNamespace);
					rpcEnvelope.SetAttribute("xmlns:m", WSDLTargetNamespace);
					rpcEnvelope.SetAttribute("encodingStyle", soapEnvNs, soapEncNs);
					
					// take all attributes from root element, insert them into rpcEnvelope
					for (int i = 0; i < node.FirstChild.Attributes.Count; i++)
						rpcEnvelope.SetAttribute(node.Attributes[i].Name, node.Attributes[i].Value);

					// and add children of root node to rpcEnvelope
					if (node != null)
					{
                        int count = node.ChildNodes.Count;
                        // headers first: 0..n-1
                        for (int i = 0; i < count - 1; i++)
                            header.AppendChild(soapDoc.ImportNode(node.ChildNodes[i], true));
                        // message is last
                        XmlNode dummyMsgRoot = node.ChildNodes[count - 1];
                        for (int i = 0; i < dummyMsgRoot.ChildNodes.Count; i++)
							rpcEnvelope.AppendChild(soapDoc.ImportNode(dummyMsgRoot.ChildNodes[i], true));
					}
					body.AppendChild(rpcEnvelope);
				}
				else
				{
					// just add all children
					if (node != null)
					{
                        int count = node.ChildNodes.Count;
                        // headers first: 0..n-1
                        for (int i = 0; i < count-1; i++)
                            header.AppendChild(soapDoc.ImportNode(node.ChildNodes[i], true));
                        // message is last
                        XmlNode dummyMsgRoot = node.ChildNodes[count - 1];
                        for (int i = 0; i< dummyMsgRoot.ChildNodes.Count; i++)
							body.AppendChild(soapDoc.ImportNode(dummyMsgRoot.ChildNodes[i], true));
					}
				}

				if (header.ChildNodes.Count > 0)
					envelope.AppendChild(header);
				envelope.AppendChild(body);
				soapDoc.AppendChild(envelope);

				byte[] data = Encoding.UTF8.GetBytes(soapDoc.DocumentElement.OuterXml);
				
				WebRequest conn = WebRequest.Create(endpointURL);
				conn.Method = "POST";
				conn.ContentType = "text/xml; charset=utf-8";
				conn.Headers["SOAPAction"] = soapAction;
				conn.ContentLength = data.Length;
				if (username.Length != 0 && password.Length !=0)
                    conn.Headers["Authorization"] = "Basic " + Convert.ToBase64String(Encoding.UTF8.GetBytes(username + ":" + password));
				
				
				System.IO.Stream rqs = conn.GetRequestStream();
				rqs.Write(data, 0, data.Length);
				rqs.Close();
				
				WebResponse wre=null;

				try
				{
					wre = conn.GetResponse();
				}
				catch (WebException wex)
				{
					wre = wex.Response;
				}

				soapDoc.Load(wre.GetResponseStream());

				// check mustUnderstand
				XmlNodeList headers = soapDoc.GetElementsByTagName("Header", soapEnvNs);
				if (headers.Count > 1)
					throw new Exception("more than one SOAPENV:Header found");
				if (headers.Count == 1)
				{
					// if header has any children that have mustUnderstand==1, throw "don' understand"
					for (XmlNode headerNode = headers[0].FirstChild; headerNode != null; headerNode = headerNode.NextSibling)
						if (headerNode.NodeType == XmlNodeType.Element)
						{
							XmlNode muAttr = headerNode.Attributes.GetNamedItem("mustUnderstand", soapEnvNs);
							if (muAttr.Value == "1" || muAttr.Value == "true")
								throw new Exception("Cannot process messages with mustUnderstand headers");
						}
				}
				
				XmlNodeList bodies = soapDoc.GetElementsByTagName("Body", soapEnvNs);
				if (bodies.Count == 0)
					throw new Exception("Body not present");
				body = bodies[0];
				node = output;
				XmlNode bodyChild = null;
				for (int i = 0; i < body.ChildNodes.Count; ++i)
					if (body.ChildNodes[i].NodeType == XmlNodeType.Element)
					{
						bodyChild = body.ChildNodes[i];
						break;
					}

				if (bodyChild == null)
					throw new Exception("Body has no children");

				if (bodyChild.LocalName == "Fault" && bodyChild.NamespaceURI == soapEnvNs)
				{
					XmlElement faultEnvelope = node.OwnerDocument.CreateElement("soapenv:Fault", soapEnvNs);
					XmlNode detailNode = bodyChild.SelectSingleNode("detail");
					if (detailNode != null)
					{
						for (int i = 0; i < detailNode.ChildNodes.Count; i++)
							if (detailNode.ChildNodes[i].NodeType == XmlNodeType.Element)
								faultEnvelope.AppendChild(faultEnvelope.OwnerDocument.ImportNode(detailNode.ChildNodes[i], true));
					}
					
					for (XmlNode faultInfoNode = bodyChild.FirstChild; faultInfoNode != null; faultInfoNode = faultInfoNode.NextSibling)
						if (faultInfoNode.LocalName != "detail")
							faultEnvelope.AppendChild(faultEnvelope.OwnerDocument.ImportNode(faultInfoNode, true));
				
					node.AppendChild(faultEnvelope);
					return false;
				}

				if (style == CallStyle.SOAP_DOCUMENT_LITERAL)
				{
					// bodyChildren are parts
					for (int i = 0; i < body.ChildNodes.Count; ++i)
						if (body.ChildNodes[i].NodeType == XmlNodeType.Element)
							node.AppendChild(node.OwnerDocument.ImportNode(body.ChildNodes[i], true));
				}

				else if (style == CallStyle.SOAP_RPC_ENCODED)
				{
					for (int i = 0; i < bodyChild.ChildNodes.Count; i++)
						if (bodyChild.ChildNodes[i].NodeType == XmlNodeType.Element)
							node.AppendChild(node.OwnerDocument.ImportNode(bodyChild.ChildNodes[i], true));

					// handle references
					for (int i = 0; i < body.ChildNodes.Count; ++i)
						if (body.ChildNodes[i].NodeType == XmlNodeType.Element)
							node.AppendChild(node.OwnerDocument.ImportNode(body.ChildNodes[i], true));
				}
				return true;
			}
			else
                throw new Exception("Unsupported style");
		}
	}
}