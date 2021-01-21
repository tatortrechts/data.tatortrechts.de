# `data.tatortrechts.de`

Bringing scattered, **semi-structed** reporting about **right-wing violence** in Germany into a single **database**.

We provide an unified and open data source on right-wing violence incidents in Germany.
We collect the data from various data sources such as web-based chronicles (list of incidents).
For instance, we scrape reports from regional public-funded NGOs who monitor such acts.

## Objectives

The main goals of this project are:

- develope a common data schema to structure the information from right-wing violence chronicles
- scrape existing data sources to make them available in a unified format
- develope software tools to use and analyse the data

## Definition(s) for right-wing violence

Crimes motivatd by right-wing ideology, official definition from the German administration:

> „Der wesentliche Kerngedanke einer „rechten“ Ideologie ist die Annahme einer Ungleichheit/Ungleichwertigkeit der Menschen.“ Als PMK- rechts zählt demnach, „wenn in Würdigung der Umstände der Tat und/oder der Einstellung des Täters Anhaltspunkte dafür vorliegen, dass sie sich gegen eine Person wegen ihrer/ihres zugeschriebenen oder tatsächlichen politischen Haltung, Einstellung und/oder Engagements, Nationalität, ethnischen Zugehörigkeit, Hautfarbe, Religionszugehörigkeit, Weltanschauung, sozialen Status physischen und/oder psychischen Behinderung oder Beeinträchtigung, sexuellen Orientierung und/oder sexuellen Identität oder äußeren Erscheinungsbildes, gerichtet sind und die Tathandlung damit im Kausalzusammenhang steht bzw. sich in diesem Zusammenhang gegen eine Institution/Sache oder ein Objekt richtet.“ (Bundesministerium des Inneren/ Bundesministerium der Justiz (Hrsg.): Definitionssystem Politisch motivierte Kriminalität. Berlin 2016.)

_[Translation from Google](https://tinyurl.com/ycfnm883)_

However, the official definition of right-wing violence in Germany is considered controversial.
Therefore, the civil society in the form of NGOs collect data as well.
The NGOs are mainly funded by public money.

## VBRG

The VBRG is the umbrealla organisation for various local NGOs.
VBRG stands for _Verband der Beratungsstellen für Betroffene rechter, rassistischer und antisemitischer Gewalt_ (Federal Association of Independent Counseling Centers for Victims of Right, Racist and Anti-Semitic Violence in Germany).

Some members organisations of the VBRG, as part of their monitoring mission, provide chronicles of incidents at a regional level.
We collect information about what data is available from these ressources and how the data is structured.

[More Information about the monitoring](https://www.verband-brg.de/ueber-uns/#monitoring) (in German).

[We collect the information here.](/Organisations.md)

## Our Format / Data Scheme for Violence Reporting

[We propose a format how incidents report should be structured.](/Format.md)

## Our Scrapers

Scrapers are setup to run on the [Morph.io](https://morph.io/) automatically ones a day.
You find them [here](https://morph.io/rechtegewalt).

So far the following scrapers are available:

- Sachsen-Anhalt: [Data](https://morph.io/rechtegewalt/mobile-opferberatung-scraper), [Scraper](https://github.com/rechtegewalt/mobile-opferberatung-scraper), [Website](https://www.mobile-opferberatung.de/monitoring/chronik-2019/)
- Sachsen: [Data](https://morph.io/rechtegewalt/raa-sachsen-scraper), [Scraper](https://github.com/rechtegewalt/raa-sachsen-scraper), [Website](https://www.raa-sachsen.de/chronik.html)
- Brandenburg: [Data](https://morph.io/rechtegewalt/opferperspektive-scraper), [Scraper](https://github.com/jfilter/opferperspektive-scraper), [Website](https://www.opferperspektive.de/category/rechte-angriffe/chronologie-rechter-angriffe)
- TODO: list them all here as well

## Related Work

### DE

- https://vis.one/rechte-gewalt/
- https://rechtesland.de/
- https://www.tagesspiegel.de/politik/interaktive-karte-todesopfer-rechter-gewalt-in-deutschland-seit-der-wiedervereinigung/23117414.html
- https://www.welt.de/politik/deutschland/article139562077/Karte-der-Gewalt-und-Proteste-gegen-Fluechtlinge.html
- https://www.zeit.de/politik/deutschland/2015-08/gewalt-gegen-fluechtlinge-rassismus-deutschland-anschlaege-koerperverletzung
- https://interaktiv.tagesspiegel.de/lab/antisemitische-uebergriffe-so-wurde-die-gewalt-zum-flaechenbrand/
- https://www.jmberlin.de/topographie-gewalt/#/vis

### US

- https://www.splcenter.org/hate-map

### Archived Tools

Tools to support writing scrapers (_currently not working properly_):

- A module to handle the setup of a SQLITE database and the insertion of records from Right-Wing violence reports in JSON
  https://github.com/kremio/rwv-sqlite-js
- Tools to validate reports against the schema:
  For Node.js: https://github.com/kremio/rwv-schema-js

- Thüringen: [Data](https://morph.io/redadmiral/ezra_scraper), [Scraper](https://github.com/redadmiral/ezra_scraper), [Website](https://ezra.de/chronik/)
- Mecklenburg-Vorpommern: [Data](https://morph.io/schwukas/rwv-de-mv-lobbi), [Scraper](https://github.com/schwukas/rwv-de-mv-lobbi), [Website](https://www.lobbi-mv.de/chronik-rechter-gewalt/)
- München: [Data](https://morph.io/kremio/rwv-de-by-before), [Scraper](https://github.com/kremio/rwv-de-by-before), [Website](https://muenchen-chronik.de/)

### New Data Sources

- https://github.com/ax3l/chronik-vorfaelle violence against refugees (Data by AAS)
- https://www.mut-gegen-rechte-gewalt.de/service/chronik-vorfaelle
- https://opfer-rechter-gewalt.de/todesopfer/

## Contributing

If you have a **question**, found a **bug** or want to propose a new **feature**, have a look at the [issues page](https://github.com/rechtegewalt/data.tatortrechts.de/issues).

**Pull requests** are especially welcomed when they fix bugs or improve the code quality.

## Acknowledgements

Thanks to [Jonathan Crémieux](https://github.com/kremio) et al. for their essential contributions in 2018 and 2019.

## License

MIT
