cscript replace.vbs "C:\Inetpub\wwwroot\EPRTRpublic\EPRTRweb\web.config" "SDKCGA6302.rdg.bane.dk" "SDKCGA6306.rdg.bane.dk"
cscript replace.vbs "C:\Inetpub\wwwroot\EPRTRreview\EPRTRweb\web.config" "SDKCGA6302.rdg.bane.dk" "SDKCGA6306.rdg.bane.dk"
cscript replace.vbs "C:\Inetpub\wwwroot\EPRTRreview\EPRTRweb\web.config" "allow users" "deny users"
cscript replace.vbs "C:\Inetpub\wwwroot\EPRTRpublic\EPRTRweb\web.config" "EPRTRweb;" "EPRTRpublic;"
cscript replace.vbs "C:\Inetpub\wwwroot\EPRTRreview\EPRTRweb\web.config" "EPRTRweb;" "EPRTRreview;"
cscript replace.vbs "C:\Inetpub\wwwroot\EPRTRpublic\EPRTRweb\web.config" "sa;" "gis;"
cscript replace.vbs "C:\Inetpub\wwwroot\EPRTRreview\EPRTRweb\web.config" "sa;" "gis;"
