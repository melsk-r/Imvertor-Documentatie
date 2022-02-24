# 5.3 Naamgevingsconventies

## Bestandsnamen voor EA Bestanden

Bestandsnamenconventie voor bestanden in de trunk is:

> [Modeltype] [Domein (al dan niet als afkorting)].xml

Bijvoorbeeld:
SIM IMZTC.xml
SIM RGBZ.xml
SIM RSGB.xml
UGM BG.xml
UGM ZKN.xml
UGM ZTC.xml
BSM DCR.xml
BSM ZDS.xml
BSM JZ.xml

Bestandsnamenconventie voor bestanden in de tags is:

> [bestandsnaam minus versienummer, status, datum en extensie] [versienummer] [status] R[releasedatum].xml;

Bestandsnamenconventie voor bestanden in de branch is:

> [bestandsnaam minus extensie] [versienummer] in gebruik [datum branchcreatie].xml;

## Resources en Properties

Voor de naamgeving van resources en properties conformeren we ons aan de [API design rules](https://publicatie.centrumvoorstandaarden.nl/api/adr/) en [API Designrule extentions](https://geonovum.github.io/KP-APIs/API-strategie-extensies/) Van de Nederlandse API-strategie. 

## Component namen

| Componenttype|_. Conventie|_. Voorbeeld|
| Enumeratie | _[enumeratie naam]_enum_ | 'geslacht_enum' |
