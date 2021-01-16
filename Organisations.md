# Loose Collection of Information about Germany-focused Right-wing Violence Chronicles

A more up to date overview:

- https://rightwatching.org/chroniken-der-rechten-szene
- https://github.com/rechtegewalt/chronicle-metadata

## B.U.D. (Bayern)

### Site

http://www.bud-bayern.de/

### Reports index

N/A

## ReachOut (Berlin)

### Site

http://www.reachoutberlin.de/

### Reports index

https://www.reachoutberlin.de/de/chronik

#### Pagination

https://www.reachoutberlin.de/de/chronik?page=PAGE

#### Access to a single report

Link is in the 2nd column of the table

### Data in the report

- Date of the incident

  Wrapped in a SPAN with class 'date-display-single'  
  UTC representation in in the 'content' attribute of the SPAN

- Place of the incident in plain text

  Wrapped in H1

- (Optional) Geocoordinates of the place of the incident

  In a SCRIPT tag inside HEAD: {"type":"point","lat":52.4661044,"lon":13.434734}]}

- Description of the incident

  In the first P inside a DIV with class 'field-type-text-with-summary'

- (Optional) List of other sources

  In the second P inside a DIV with class 'field-type-text-with-summary'..
  Each source is separated by a BR, the format is SourceName, date

## LOBBI (Mecklenburg-Vorpommern)

### Site

http://www.lobbi-mv.de/

### Reports index

https://www.lobbi-mv.de/chronik-rechter-gewalt/

#### Pagination

https://www.lobbi-mv.de/chronik-rechter-gewalt/#YEAR

#### Access to a single report

All reports for a given year are shown on the same page.
There is a wrapper DIV for the year with its ID equal to the year.
Each report is contained in a DIV who is a direct child of the wrapper DIV.

### Data in the report

- Date of the incident

  First text element of the report `DIV`, preceding the location: 22.06.2018 - Bergen

- Place of the incident in plain text

  First text element of the report `DIV`, added after the date.  
  The district is given wrapped in a following `SPAN` and an `I`  
  22.06.2018 - Bergen `<span class="small"><i>(Vorpommern-Ruegen)</i></span>`

- Description of the incident

  A text element wrapped between 2 closed (!) `</p>` tags

- Source

  Wrapped in a SPAN inside the last `P` of the report's `DIV`
  `<span class="small">Quelle: Polizei</span>`

### Note

The reports can be filtered by Landkreis, Motiv, and Delikt.
This is done with a POST request to https://www.lobbi-mv.de/lobbi-neu/index.php?inhalt=chronik_gewalt
The parameters are:

- landkreis
- motiv
- delikt
  The possible values can be found from the `OPTIONS` in the `SELECT`s with the `NAME` attributes `landkreis`, `motiv`, `delikt`

## Opferperspektive (Brandenburg)

### Site

https://www.opferperspektive.de/

### Reports index

https://www.opferperspektive.de/category/rechte-angriffe/chronologie-rechter-angriffe

#### Pagination

https://www.opferperspektive.de/category/rechte-angriffe/chronologie-rechter-angriffe/page/PAGE

#### Access to a single report

The link is inside a H1 under the ARTICLE tag.

### Data in the report

- Date of the incident

  Found inside the element with classname `post-date`

- City of the incident in plain text

  Inside the only `SPAN` in a `DIV` with class `stadt`

- District (Landkreis) of the incident in plain text

  Inside the only `SPAN` in a `DIV` with class `landkreis`

- Sources

  Separated by comma (,) Inside the only `SPAN` in a `DIV` with class `quelle`

- Description of the incident

  Inside the first `P` of the document

- Tags

  Inside `A` with attribute `rel="tag"`

## RAA (Sachsen)

### Site

https://raa-sachsen.de/

### Reports index

https://raa-sachsen.de/chronik.html

#### Pagination

https://raa-sachsen.de/chronik.html?page_n13=PAGE

#### Access to a single report

The link is found inside each H1

_WARNING_: The page linked might have less data than what is shown in the summary, but not more (as far as I can tell).  
For example, see https://raa-sachsen.de/chronik-details/coswig-1051.html compared to its
summary at https://raa-sachsen.de/chronik.html?page_n13=708

It is better to then scrap the information directly from the reports summary. The following data topology will therefore imply
that the parent element is not the page, but one of the reports summary wrappers which is are `DIV`s with the class `layout_latest`

### Data in the report

- Date of the incident

  Found wrapped inside the `TIME` element. Its UTC representation is in the `datetime` attribute.

- Location of the incident in plain text

  Found in the text element following the `TIME` element.  
  In the format `: City (District)`  
  **NOTE**: All the districts can be found inside the `title` attribute of `A`s inside `LI`s who are siblings of the `LI` that wraps an `A` where `title="alle Landkreise"`

- Headline

  For instance: Muslimisches Ehepaar vor Supermarkt angegriffen
  Found wrapped inside the `STRONG` element.

- Description of the incident

  Given that the parent `DIV` has N `P` elements in the following order  
  1: `P`  
  2: `P`  
  3: `P`  
  ...  
  N-2: `P`  
  N-1: `P`  
  N: `P`  
  The description is wrapped inside all the `P`s from position 3 to N-3 included

- Source

  Inside the `P` following the last desciption `P` element (at position N-2)  
  It is sometimes wrapped in a `EM` element inside the `P`, but this is not consistent  
  Format Quelle: Source1, Source2, ...

## Mobile Beratung für Opfer rechter Gewalt (Sachsen-Anhalt)

### Site

http://www.mobile-opferberatung.de

### Reports index

http://www.mobile-opferberatung.de/monitoring/chronik

#### Pagination

http://www.mobile-opferberatung.de/monitoring/chronikYEAR/

#### Access to a single report

All reports for a given year are shown on the same page.
The report starts with an `H5` and ends with a `DIV`

### Data in the report

- Date of the incident

  Found inside the `H1` tag, in the format : `dd.mm.yyyy City (District)`

- Location of the incident in plain text

  Found inside the `H1` tag, in the format : `dd.mm.yyyy City (District)`  
  The district information is optional

- Source

  Found inside the `H5`, in the format : `Source Name, Source report data(dd.mm.yyyy)`  
  ex.: `Bundespolizei Magdeburg, 17.09.2018`  
  In case the organisation itself is the source, the format is then: `Contact point, eigener Bericht`  
  ex.: `Anlaufstelle Süd, eigener Bericht`  
  Several sources are separated with ' / '

- Description of the incident

  Found inside the `P` element inside the `DIV` found after the `H1` element

## ezra (Thüringen)

### Site

https://ezra.de/

### Reports index

https://ezra.de/chronik/

#### Pagination

All the reports are displayed on one page.

#### Access to a single report

The page loads the reports from a JSON file by querying **https://angstraeume.ezra.de/wp-json/ezra/v1/chronic**

The following report will detail the content of the JSON file.
The general format is:

```
{
	entries : Array[{
		content         : string,
		endDate         : empty,
		endYear         : empty,
		id              : integer,
		locationDisplay : string,
		locations       : Array[integer], //see meta.locations
		motives         : Array[integer], //see meta.motive
		sourceName      : string,
		sourceUrl       : URL,
		startDisplay    : string (d.m.yyyy),
		startYear       : integer,
		title           : string
	}],

	meta: {
		lastYear: integer (yyyy),
		locations: {
			(integer): string,
			...
		},
		motives: {
			(integer): string
		}
	}
}
```

Each single report is an entry in the `entries` array.

### Data in the report

- Date of the incident

  `startDisplay`

- Location of the incident in plain text

  `locationDisplay`
  Format `Municipality (District)`  
  For larger cities which do not belong to a district, only the municipality appears

- Headline

  `title`  
  For instance: Landtagsabgeordnete von Demonstrant\*innen bedroht

- Description of the incident

  `content`  
   Contains HTML tags

- Source name

  `sourceName`

- Source URL (optional)

  `sourceUrl`

- Motives

  Use the keys in `motives` to map to `meta.motives`

## OBR (Nordrein-Westfalen)

### Site

https://www.opferberatung-rheinland.de

### Reports index

https://www.opferberatung-rheinland.de/chronik-der-gewalt/

#### Pagination

https://www.opferberatung-rheinland.de/chronik-der-gewalt/chronik-YEAR/

#### Access to a single report

All reports for a given year are shown on the same page.
There is a URL to access a single report, but it does not contain more information than
what can be found on the index page for the year.

A single report is wrapped in a `DIV` with class `articletype-0`

### Data in the report

- Date of the incident

  Found in a `SPAN` with the attribute `itemprop="headline"`  
  Format: `d.m.yy: Municipality`  
  The **:** is optional  
  Sometimes they are 2 days for a report, in that case the format is: `d./d.m.yy`  
  or `d. u. d.m.yy`

- Location of the incident in plain text

  Found in a `SPAN` with the attribute `itemprop="headline"`  
  Format: `d.m.yy: Municipality`  
  The **:** is optional  
  If the incident occured in more than one municipality, the list is given separated by a **/**: Köln/Leverkusen

- Description of the incident

  Found wrapped in the first `P` in a `SPAN` with the attribute `itemprop="description"`

- Source

  Found wrapped in the second `P` in a `SPAN` with the attribute `itemprop="description"`  
  Format: `SourceName v. d.m.yy`  
  Many sources are given separated by comma.  
  Sometime, 2 sources names ares given together separated by **u.i** , with a single date: `Express.de u. ksta.de v. 1.1.18`  
  Or the sources names are separated by commas, but there is a single date: `Stern.de, focus.de, welt.de u. zeit.de v. 28.11.1`

## response (Hessen)

### Site

https://response-hessen.de

### Reports index

https://response-hessen.de/chronik

#### Pagination

https://response-hessen.de/chronik?page=PAGE

PAGE starts at 0.

**NOTE:** Reports can be classified by motivation behind the violence, by selecting from a list.  
This triggers an AJAX request normally, but one can also access the filtered set with a `GET` in the format:  
`https://response-hessen.de/chronik?field_district_tid=All&field_motivation_tid=MOTIVATION_ID&page=PAGE`

The `MOTIVATION_ID` is found from the values in the `SELECT` with `id="edit-field-motivation-tid"`

#### Access to a single report

A single report is wrapped in an `ARTICLE` with class `node-chronicle`

### Data in the report

- Date of the incident

  Found in a `SPAN` with class `date-display-single`  
  Format: `d. Monat YYYY`

- Location of the incident in plain text

  Found in the only `H2`  
  Format: `Municipality (District): Headline`  
  In case of a larger city like Frankfurt am Main, only the municipality is shown

- Headline

  Found in the only `H2`  
  Format: `Municipality (District): Headline`  
  ex: Rassistischer Angriff auf Familie in Straßenbahn

- Description of the incident

  Found wrapped in the only `P`

- Source

  Each source is in a `LI`  
  If there is a URL to the source, the source name is wrapped in a `A`

- Motives

  The motive is not in the HTML code, but can be obtained by accessing the reports with a filter.  
  See the note in **Pagination**

## Before (München)

### Site

https://www.before-muenchen.de/

### Reports index

https://muenchen-chronik.de/chronik/

#### Pagination

https://muenchen-chronik.de/chronik/?sf_paged=PAGE

PAGE starts at 1

#### Access to a single report

Each report summary on the index page is wrapped in an `ARTICLE`. The link to the whole report is found in a `A` with class `more`.

### Data in the report

The report is wrapped in an `ARTICLE`. Some information such as the location, the motive, etc.. are found in its `class` attribute.

- Date of the incident

  Found in a `H1` with class `entry-title`  
  Format: `d. Monat YYYY - Headline`  
  Sometimes they are 2 days for a report, in that case the format is: `d./d. Monat YYYY`

- Location of the incident in plain text

  Inside the class attribute of the `ARTICLE`  
  Format: `category-municipality`  
  Ex.: category-ba-01-altstadt-lehel, category-landkreis-muenchen, category-unbekannt

- Headline

  Found in a `H1` with class `entry-title`  
  Format: `d. Monat YYYY - Headline`  
  ex: Rassistische Beleidigung und Angriff

- Description of the incident

  Found wrapped in the only `P` of the `DIV` with class `entry-content`

- Source

  Found in the only `SPAN` with class `smallinfo`  
  Format: `Quelle: source1, source2, ...`  
  Ex.: a.i.d.a., firm, Pressebericht des Polizeipräsidiums München vom 28. August 2018, sueddeutsche.de vom 28. August 2018  
  Sometimes a comma (,) to separate 2 sources is replaced by **und**.  
  Ex.: a.i.d.a., Mitteilung der Bundespolizeiinspektion München vom 10. September 2018 und Artikel der „Süddeutschen Zeitung“ (Online-Version, www.sueddeutsche.de) vom 10. September 2018

- Motives

  Inside the class attribute of the `ARTICLE`  
  Format: `motiv-motive`  
  Ex.: motiv-rassismus

- Deed

  Inside the class attribute of the `ARTICLE`  
  Format: `handlung-deed`  
  Ex.: handlung-beleidigung-beschimpfung-bedrohung

- Context

  Inside the class attribute of the `ARTICLE`  
  Format: `kontext-context`  
  Ex.: kontext-arbeitsplatz

**NOTE**: The list of municipalities, motives, deeds and contexts can be respectively found on the index page
from the `SELECT`s with classes `_sft_category[]`, `_sft_motiv[]`, `_sft_handlung[]` and `_sft_kontext[]`
