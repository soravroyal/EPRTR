cscript replace.vbs "C:\E-PRTR_Ori\EEA\EPRTRpublic\EPRTRweb\web.config" "SDKCGA6302" "tetrasql"
cscript replace.vbs "C:\E-PRTR_Ori\EEA\EPRTRreview\EPRTRweb\web.config" "SDKCGA6302" "tetrasql"
cscript replace.vbs "C:\E-PRTR_Ori\EEA\EPRTRreview\EPRTRweb\web.config" "allow users" "deny users"
cscript replace.vbs "C:\E-PRTR_Ori\EEA\EPRTRpublic\EPRTRweb\web.config" "EPRTRweb;" "EPRTRpublic;"
cscript replace.vbs "C:\E-PRTR_Ori\EEA\EPRTRreview\EPRTRweb\web.config" "EPRTRweb;" "EPRTRreview;"
cscript replace.vbs "C:\E-PRTR_Ori\EEA\EPRTRpublic\EPRTRweb\web.config" "sa;" "gis;"
cscript replace.vbs "C:\E-PRTR_Ori\EEA\EPRTRreview\EPRTRweb\web.config" "sa;" "gis;"
cscript replace.vbs "C:\E-PRTR_Ori\EEA\EPRTRreview\sitemaps-asp2google\SitemapConverter.exe.config" "SDKCGA6302" "TETRASQL"