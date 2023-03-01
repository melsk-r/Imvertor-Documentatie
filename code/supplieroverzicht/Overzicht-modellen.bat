@echo off
set saxon11_path=C:\SaxonHE11-5J\saxon-he-11.5.jar
set trunk=C:\Data\KING\Kern-taken\StUF\EAP-bronnen\XMI-data\trunk
set basefolder=C:\Data\Temp\GitHub\Model-Driven-Design-Documentatie\code\supplieroverzicht

@echo on

C:
cd %trunk%
del SIMcatalogue.txt
del UGMcatalogue.txt
del BSMcatalogue.txt

cd SIM
dir /B > ../SIMcatalogue.txt
cd ..\UGM
dir /B > ../UGMcatalogue.txt
cd ..\BSM
dir /B > ../BSMcatalogue.txt

cd ..\..\branches
del SIMcatalogue.txt
del UGMcatalogue.txt
del BSMcatalogue.txt

cd SIM
dir /B > ../SIMcatalogue.txt
cd ..\UGM
dir /B > ../UGMcatalogue.txt
cd ..\BSM
dir /B > ../BSMcatalogue.txt

cd ..\..\tags
del SIMcatalogue.txt
del UGMcatalogue.txt
del BSMcatalogue.txt
cd SIM
dir /B > ../SIMcatalogue.txt
cd ..\UGM
dir /B > ../UGMcatalogue.txt
cd ..\BSM
dir /B > ../BSMcatalogue.txt

cls

cd %basefolder%

rem java -Xmx1024m -jar %saxon_path% -o:Supplieroverzicht.html -s:Supplieroverzicht-html.xsl -xsl:Supplieroverzicht-html.xsl SVNpath=file:////C:/Data/KING/Kern-taken/StUF/EAP-bronnen/XMI-data/
java -Xmx1024m -cp %saxon11_path% net.sf.saxon.Transform -t -o:Supplieroverzicht.html -s:Supplieroverzicht-html.xsl -xsl:Supplieroverzicht-html.xsl SVNpath=file:////C:/Data/KING/Kern-taken/StUF/EAP-bronnen/XMI-data/
