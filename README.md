# `data.tatortrechts.de`

Transform scattered, **semi-structed** reporting about **right-wing violence** in Germany into a single **database**.

The main goals of this project are:

- develope a data from to structure the information from right-wing violence chronicles
- scrape existing data sources (web pages) to make them available in a unified format
- develope software tools to use and analyse the data

## Definition(s) for right-wing violence

We take the official definition from the German administration as a basis:

> „Der wesentliche Kerngedanke einer „rechten“ Ideologie ist die Annahme einer Ungleichheit/Ungleichwertigkeit der Menschen.“ Als PMK- rechts zählt demnach, „wenn in Würdigung der Umstände der Tat und/oder der Einstellung des Täters Anhaltspunkte dafür vorliegen, dass sie sich gegen eine Person wegen ihrer/ihres zugeschriebenen oder tatsächlichen politischen Haltung, Einstellung und/oder Engagements, Nationalität, ethnischen Zugehörigkeit, Hautfarbe, Religionszugehörigkeit, Weltanschauung, sozialen Status physischen und/oder psychischen Behinderung oder Beeinträchtigung, sexuellen Orientierung und/oder sexuellen Identität oder äußeren Erscheinungsbildes, gerichtet sind und die Tathandlung damit im Kausalzusammenhang steht bzw. sich in diesem Zusammenhang gegen eine Institution/Sache oder ein Objekt richtet.“ (Bundesministerium des Inneren/ Bundesministerium der Justiz (Hrsg.): Definitionssystem Politisch motivierte Kriminalität. Berlin 2016.)

The _VBRG_ is the umbrealla organisation for various local NGOs that monitor righ-wing violence and have a slightly [extended definition](https://verband-brg.de/ueber-uns/#monitoring). _VBRG_ stands for _Verband der Beratungsstellen für Betroffene rechter, rassistischer und antisemitischer Gewalt_ (Federal Association of Independent Counseling Centers for Victims of Right, Racist and Anti-Semitic Violence in Germany).

## Data Format for Violence Reporting

[We propose a format how incidents report should be structured.](/Format.md)

## Our Scrapers

Scrapers are setup to run on the [Morph.io](https://morph.io/) automatically once a day.
And the source code of the scrapers on [GitHub](https://github.com/rechtegewalt) and the data on [morph.io](https://morph.io/rechtegewalt).

## Related Work

### DE

- https://vis.one/rechte-gewalt/
- https://rechtesland.de/
- https://www.tagesspiegel.de/politik/interaktive-karte-todesopfer-rechter-gewalt-in-deutschland-seit-der-wiedervereinigung/23117414.html
- https://www.welt.de/politik/deutschland/article139562077/Karte-der-Gewalt-und-Proteste-gegen-Fluechtlinge.html
- https://www.zeit.de/politik/deutschland/2015-08/gewalt-gegen-fluechtlinge-rassismus-deutschland-anschlaege-koerperverletzung
- https://interaktiv.tagesspiegel.de/lab/antisemitische-uebergriffe-so-wurde-die-gewalt-zum-flaechenbrand/
- https://www.jmberlin.de/topographie-gewalt/#/vis
- https://halle.nsu-watch.info/
- https://github.com/ax3l/chronik-vorfaelle (scraper)

### US

- https://www.splcenter.org/hate-map

### Archived Tools

Some tools that were developed for this undertaking but are currently not in use and/or working.

- A module to handle the setup of a SQLITE database and the insertion of records from Right-Wing violence reports in JSON
  https://github.com/kremio/rwv-sqlite-js
- Tools to validate reports against the schema:
  For Node.js: https://github.com/kremio/rwv-schema-js
- Thüringen: [Data](https://morph.io/redadmiral/ezra_scraper), [Scraper](https://github.com/redadmiral/ezra_scraper), [Website](https://ezra.de/chronik/)
- Mecklenburg-Vorpommern: [Data](https://morph.io/schwukas/rwv-de-mv-lobbi), [Scraper](https://github.com/schwukas/rwv-de-mv-lobbi), [Website](https://www.lobbi-mv.de/chronik-rechter-gewalt/)
- München: [Data](https://morph.io/kremio/rwv-de-by-before), [Scraper](https://github.com/kremio/rwv-de-by-before), [Website](https://muenchen-chronik.de/)

## Contributing

If you have a **question**, found a **bug** or want to propose a new **feature**, have a look at the [issues page](https://github.com/rechtegewalt/data.tatortrechts.de/issues).

**Pull requests** are especially welcomed when they fix bugs or improve the code quality.

## Acknowledgements

Thanks to [Jonathan Crémieux](https://github.com/kremio) et al. for their essential contributions in 2018 and 2019.

## License

Affero General Public License 3.0
