## B.U.D. (Bayern)
### Site
http://www.bud-bayern.de/

### Reports location
N/A


## ReachOut (Berlin)
### Site
http://www.reachoutberlin.de/

### Reports location
https://www.reachoutberlin.de/de/chronik

#### Pagination
https://www.reachoutberlin.de/de/chronik?page=PAGE

#### Access to a single report
Link is in the 2nd column of the table

### Data in the report
* Date of the incident

  Wrapped in a SPAN with class 'date-display-single'  
  UTC representation in in the 'content' attribute of the SPAN
* Place of the incident in plain text

  Wrapped in H1
* (Optional) Geocoordinates of the place of the incident

  In a SCRIPT tag inside HEAD: {"type":"point","lat":52.4661044,"lon":13.434734}]}
* Description of the incident

  In the first P inside a DIV with class 'field-type-text-with-summary'
* (Optional) List of other sources

  In the second P inside a DIV with class 'field-type-text-with-summary'..
  Each source is separated by a BR, the format is SourceName, date


## LOBBI (Mecklenburg-Vorpommern)
### Site
http://www.lobbi-mv.de/

### Reports location
https://www.lobbi-mv.de/chronik-rechter-gewalt/

#### Pagination
https://www.lobbi-mv.de/chronik-rechter-gewalt/#YEAR

#### Access to a single report
All reports for a given year are shown on the same page.
There is a wrapper DIV for the year with its ID equal to the year.
Each report is contained in a DIV who is a direct child of the wrapper DIV.

### Data in the report
* Date of the incident

  First text element of the report `DIV`, preceding the location: 22.06.2018 - Bergen
* Place of the incident in plain text

  First text element of the report `DIV`, added after the date.  
  The district is given wrapped in a following `SPAN` and an `I`  
  22.06.2018 - Bergen `<span class="small"><i>(Vorpommern-Ruegen)</i></span>`
* Description of the incident

  A text element wrapped between 2 closed (!) `</p>` tags
* Source

  Wrapped in a SPAN inside the last `P` of the report's `DIV`
  `<span class="small">Quelle: Polizei</span>`
### Note
The reports can be filtered by Landkreis, Motiv, and Delikt.
This is done with a POST request to https://www.lobbi-mv.de/lobbi-neu/index.php?inhalt=chronik_gewalt
The parameters are:
* landkreis
* motiv
* delikt
The possible values can be found from the `OPTIONS` in the `SELECT`s with the `NAME` attributes `landkreis`, `motiv`, `delikt`


## Opferperspektive (Brandenburg)
### Site
https://www.opferperspektive.de/

### Reports location
https://www.opferperspektive.de/category/rechte-angriffe/chronologie-rechter-angriffe

#### Pagination
https://www.opferperspektive.de/category/rechte-angriffe/chronologie-rechter-angriffe/page/PAGE

#### Access to a single report
The link is inside a H1 under the ARTICLE tag.

### Data in the report
* Date of the incident

  Found inside the element with classname `post-date`
* City of the incident in plain text

  Inside the only `SPAN` in a `DIV` with class `stadt`
* District (Landkreis) of the incident in plain text

  Inside the only `SPAN` in a `DIV` with class `landkreis`
* Sources

  Separated by comma (,) Inside the only `SPAN` in a `DIV` with class `quelle`
* Description of the incident

  Inside the first `P` of the document

* Tags

  Inside `A` with attribute `rel="tag"`


## RAA (Sachsen)
### Site
https://raa-sachsen.de/

### Reports location
https://raa-sachsen.de/chronik.html

#### Pagination
https://raa-sachsen.de/chronik.html?page_n13=PAGE

#### Access to a single report
The link is found inside each H1

*WARNING*: The page linked might have less data than what is shown in the summary, but not more (as far as I can tell).  
For example, see https://raa-sachsen.de/chronik-details/coswig-1051.html compared to its
summary at https://raa-sachsen.de/chronik.html?page_n13=708

It is better to then scrap the information directly from the reports summary. The following data topology will therefore imply
that the parent element is not the page, but one of the reports summary wrappers which is are `DIV`s with the class `layout_latest`

### Data in the report

* Date of the incident

  Found wrapped inside the `TIME` element. Its UTC representation is in the `datetime` attribute.
* Location of the incident in plain text

  Found in the text element following the `TIME` element.  
  In the format `: City (District)`  
  **NOTE**: All the districts can be found inside the `title` attribute of `A`s inside `LI`s who are siblings of the `LI` that wraps an `A` where `title="alle Landkreise"`
* Headline

  For instance: Muslimisches Ehepaar vor Supermarkt angegriffen
  Found wrapped inside the `STRONG` element.
* Description of the incident

  Given that the parent `DIV` has N `P` elements in the following order  
  1: `P`  
  2: `P`  
  3: `P`  
  ...  
  N-2: `P`  
  N-1: `P`  
  N: `P`  
  The description is wrapped inside all the `P`s from position 3 to N-3 included
* Source

  Inside the `P` following the last desciption `P` element (at position N-2)  
  It is sometimes wrapped in a `EM` element inside the `P`, but this is not consistent  
  Format Quelle: Source1, Source2, ...



## Mobile Beratung für Opfer rechter Gewalt (Sachsen-Anhalt)
### Site
http://www.mobile-opferberatung.de

### Reports location
http://www.mobile-opferberatung.de/monitoring/chronik

#### Pagination
http://www.mobile-opferberatung.de/monitoring/chronikYEAR/

#### Access to a single report
All reports for a given year are shown on the same page.
The rerport starts with an `H5` and ends with a `DIV`

### Data in the report

* Date of the incident

  Found inside the `H1` tag, in the format : `dd.mm.yyyy  City (District)`
* Location of the incident in plain text

  Found inside the `H1` tag, in the format : `dd.mm.yyyy  City (District)`  
  The district information is optional
* Source

  Found inside the `H5`, in the format : `Source Name, Source report data(dd.mm.yyyy)`  
  ex.: `Bundespolizei Magdeburg, 17.09.2018`  
  In case the organisation itself is the source, the format is then: `Contact point, eigener Bericht`  
  ex.: `Anlaufstelle Süd, eigener Bericht`  
  Several sources are separated with ' / '
* Description of the incident

  Found inside the `P` element inside the `DIV` found after the `H1` element



## ezra (Thüringen)
### Site
https://ezra.de/

### Reports location
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

* Date of the incident

  `startDisplay`
* Location of the incident in plain text

  `locationDisplay`
  Format `Municipality (District)`  
  For larger cities which do not belong to a district, only the municipality appears
* Headline

  `title`  
  For instance: Landtagsabgeordnete von Demonstrant*innen bedroht
* Description of the incident

  `content`  
   Contains HTML tags
* Source name

  `sourceName`
* Source URL (optional)

  `sourceUrl`
* Motives

  Use the keys in `motives` to map to `meta.motives`



## OBR (Nordrein-Westfalen)
### Site
https://www.opferberatung-rheinland.de

### Reports location
https://www.opferberatung-rheinland.de/chronik-der-gewalt/

**TODO**


## Before (München)
### Site
https://www.before-muenchen.de/

### Reports location
https://muenchen-chronik.de/chronik/

**TODO**


## response (Hessen)
### Site
https://response-hessen.de

### Reports location
https://response-hessen.de/chronik

**TODO**


