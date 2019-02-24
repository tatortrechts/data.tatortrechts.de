# Right-wing violence in Germany
This repository is an effort to provide an unified and open data source on right-wing violence incidents in Germany by scraping reports from regional public-funded organizations who monitor such acts.

## Objectives
At the moment, right-wing violence reports publishers on the web are making the data available on their sites in a more or less structured way, without adhering to a common format.
In terms of Tim Berners-Lee "5 stars" (https://5stardata.info/en/) Open Data deployment scheme, these sources of data have reached 2 to 3 stars.

The main goal of this project is to open up the available data even more by:
 - developing a common data schema to structure the information from right-wing violence chronicles
 - scraping existing data sources to make them available under the unified format
 - developing software tools to use the data

## Crimes motivatd by right-wing ideology, official definition from the german police
>„Der wesentliche Kerngedanke einer „rechten“ Ideologie ist die Annahme einer Ungleichheit/Ungleichwertigkeit der Menschen.“ Als PMK- rechts zählt demnach, „wenn in Würdigung der Umstände der Tat und/oder der Einstellung des Täters Anhaltspunkte dafür vorliegen, dass sie sich gegen eine Person wegen ihrer/ihres zugeschriebenen oder tatsächlichen politischen Haltung, Einstellung und/oder Engagements, Nationalität, ethnischen Zugehörigkeit, Hautfarbe, Religionszugehörigkeit, Weltanschauung, sozialen Status physischen und/oder psychischen Behinderung oder Beeinträchtigung, sexuellen Orientierung und/oder sexuellen Identität oder äußeren Erscheinungsbildes, gerichtet sind und die Tathandlung damit im Kausalzusammenhang steht bzw. sich in diesem Zusammenhang gegen eine Institution/Sache oder ein Objekt richtet.“ (Bundesministerium des Inneren/ Bundesministerium der Justiz (Hrsg.): Definitionssystem Politisch motivierte Kriminalität. Berlin 2016.)

Source: [VBRG](https://verband-brg.de/index.php/monitoring)

[Translation from Google](https://tinyurl.com/ycfnm883)

## Reports publishers
Some members organisations of the VBRG (Federal Association of Independent Counseling Centers for Victims of Right, Racist and Anti-Semitic Violence in Germany), as part of their monitoring mission, provide chronicles of incidents at a regional level.

This page contains link to chronologies of incidents maintained by different organisations: https://verband-brg.de/index.php/monitoring

[This document](/docs/Topology.md) contains detailed information about what data is available from these ressources and how the data is structured.

## Reports format
A draft of the proposed schema is available [here](/docs/ReportFormat.md)

Tools to validate reports against the schema:
- For Node.js: https://github.com/kremio/rwv-schema-js

## Scrapers
Scrapers are setup to run on the [Morph.io](https://morph.io/) service. So far the following scrapers are available:

- München: [Data](https://morph.io/kremio/rwv-de-by-before), [Scraper](https://github.com/kremio/rwv-de-by-before), [Website](https://muenchen-chronik.de/)
- Sachsen-Anhalt: [Data](https://morph.io/jfilter/mobile-opferberatung-scraper), [Scraper](https://github.com/jfilter/mobile-opferberatung-scraper), [Website](https://www.mobile-opferberatung.de/monitoring/chronik-2019/)
- Sachsen: [Data](https://morph.io/jfilter/raa-sachsen-scraper), [Scraper](https://github.com/jfilter/raa-sachsen-scraper), [Website](https://www.raa-sachsen.de/chronik.html)
- Brandenburg: [Data](https://morph.io/jfilter/opferperspektive-scraper), [Scraper](https://github.com/jfilter/opferperspektive-scraper), [Website](https://www.opferperspektive.de/category/rechte-angriffe/chronologie-rechter-angriffe)
- Thüringen: [Data](https://morph.io/redadmiral/ezra_scraper), [Scraper](https://github.com/redadmiral/ezra_scraper), [Website](https://ezra.de/chronik/)
- Mecklenburg-Vorpommern: [Data](https://morph.io/schwukas/rwv-de-mv-lobbi), [Scraper](https://github.com/schwukas/rwv-de-mv-lobbi), [Website](https://www.lobbi-mv.de/chronik-rechter-gewalt/)

Tools to support writing scrapers:
- https://github.com/kremio/rwv-sqlite-js  
A module to handle the setup of a SQLITE database and the insertion of records from Right-Wing violence reports in JSON 

## Related pojects

- A visualization: https://vis.one/rechte-gewalt/
- An atlas of Right-Wing violence in Germany: https://rechtesland.de/
- Another visualization of violence against refugees (Data by AAS): https://github.com/ax3l/chronik-vorfaelle

## Contributing

Anyone is welcome to join! Checkout the [open issues](https://github.com/codeforberlin/right-wing-violence-de/issues) of this Github repository to see what tasks require help.

Open a ticket if you have any questions or suggestions.

Also take a look at the [project's kanban](https://github.com/codeforberlin/right-wing-violence-de/projects/1) to see what we are currently working on.
