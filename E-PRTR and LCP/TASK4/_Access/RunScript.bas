Attribute VB_Name = "RunScript"
Option Compare Database

Sub SqlScripts()

   Dim vSql       As Variant
   Dim vSqls      As Variant
   Dim strSql     As String
   Dim intF       As Integer

   intF = FreeFile()
   Open "c:\Common Tables Data.sql" For Input As #intF
   strSql = Input(LOF(intF), #intF)
   Close intF
   vSql = Split(strSql, ";")

   On Error Resume Next
   For Each vSqls In vSql
      CurrentDb.Execute vSqls
   Next

End Sub
