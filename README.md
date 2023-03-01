# Imvertor-Documentatie
In deze repository vind je de door VNG-Realisatie vastgelegde documentatie. Het betreft werkwijzen die binnen VNG Realisatie gehanteerd worden, niet per definitie werkwijzen zoals die door Armatiek worden voorgeschreven. E.e.a. is op basis van ervaring tot stand gekomen. Ook bevat het beschrijvingen van de wijze waarop gewerkt dient te worden met de door de VNG zelf ontwikkelde componenten.

## Gegenereerde documentatie
Sommige delen van deze repository worden gegenereerd. Indien dat het geval is wordt dit aangegeven met 'Gegenereerd: [datum]'.
Hieronder een opsomming van de gegenereerde delen met een beschrijving hoe dit te genereren.

### Lijsten met Tagged Values

De lijsten met Taged Values zoals die in het bestand 'Tagged-values.md' staan worden gegenereerd op basis van de voor de VNG van toepassing zijnde metamodel en tagged-value configuratiebestanden van Imvertor (zie folder 'https://github.com/Imvertor/Imvertor-Maven/src/main/resources/input/KING/cfg'). Zodra daarin een wijziging wordt aangebracht moeten deze lijsten met Tagged Values opnieuw gegenereerd worden.

Het genereren gebeurd m.b.v. het XSLT stylesheet 'Consolidate-TVs-GitHub-style.xsl', te vinden in de folder https://github.com/VNG-Realisatie/Model-Driven-Design-Documentatie/tree/main/code/consolidateTagsets, en een of meer xml configuratiebestanden die je kunt vinden in de folder https://github.com/VNG-Realisatie/Model-Driven-Design-Documentatie/tree/main/code/consolidateTagsets/input. Elk configuratiebestand configureert voor één metamodel. Indien je voor een andere organisatie dan VNG Realisatie wil genereren dan zul je dat in deze bestanden moeten aangeven.

Het daadwerkelijk starten van het genereren gebeurd m.b.v. het bestand Consolidate.bat eveneens te vinden in de folder https://github.com/VNG-Realisatie/Model-Driven-Design-Documentatie/tree/main/code/consolidateTagsets.

Al deze bestanden moeten lokaal geplaatst worden voordat ze gebruikt kunnen worden. Er zijn echter nog een aantal voorwaarden waaraan je moet voldoen:
* Ook de Imvertor-Maven repo moet lokaal beschikbaar zijn;
* De folder waarin de lokale Imvertor-Maven repository (bijv. 'C:/Data/Imvertor') te vinden is moet in de xml confoguratiebestanden worden gedefinieerde op het attribute '/tas:tagsandstereos/@static-base-uri' (dus alles van het pad dat voorafgaat aan 'Imvertor-Maven');
* Een recente versie van de Saxon processor for XSLT moet geïnstalleerd zijn (zie https://www.saxonica.com/welcome/welcome.xml) en het pad waarin het benodigde jar bestand staat moet toegevoegd zijn aan de 'CLASSPATH' omgevings variabele;
* En natuurlijk moet Java (liefst de laatste versie) geïnstalleerd zijn.

Door het starten van Consolidate.bat wordt er in de folder 'consolidateTagsets/Resultaat' een aantal bestanden geplaatst waarbinnen de lijsten met Tagged Values staan. Deze kunnen nu in het bestand 'Tagged-values.md' de oude versies vervangen.

### Supplieroverzicht

