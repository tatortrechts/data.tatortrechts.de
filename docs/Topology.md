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
... Wrapped in a SPAN with class 'date-display-single'
... UTC representation in in the 'content' attribute of the SPAN
* Place of the incident in plain text
... Wrapped in H1
* (Optional) Geocoordinates of the place of the incident
... In a SCRIPT tag inside HEAD: {"type":"point","lat":52.4661044,"lon":13.434734}]}
* Description of the incident
... In the first P inside a DIV with class 'field-type-text-with-summary'
* (Optional) List of other sources
... In the second P inside a DIV with class 'field-type-text-with-summary'
... Each source is separated by a BR, the format is SourceName, date


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
... First text element of the report DIV, preceding the location: 22.06.2018 - Bergen
* Place of the incident in plain text
... First text element of the report DIV, added after the date.
... The neighborhood is given wrapped in a following SPAN and an I
... 22.06.2018 - Bergen <span class="small"><i>(Vorpommern-Ruegen)</i></span>
* Description of the incident
... A text element wrapped between 2 closed (!) </p> tags
* Source
... Wrapped in a SPAN inside the last P of the report's DIV
... <span class="small">Quelle: Polizei</span>
### Note
The reports can be filtered by Landkreis, Motiv, and Delikt.
This is done with a POST request to https://www.lobbi-mv.de/lobbi-neu/index.php?inhalt=chronik_gewalt
The parameters are:
* landkreis
* motiv
* delikt
The possible values can be found from the OPTIONS in the SELECTs with the NAME attributes `landkreis`, `motiv`, `delikt`


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
* Place of the incident in plain text
* (Optional) Geocoordinates of the place of the incident
* Description of the incident
* (Optional) List of other sources


## RAA (Sachsen)
### Site
https://raa-sachsen.de/

### Reports location
https://raa-sachsen.de/chronik.html

**TODO**


## Mobile Beratung für Opfer rechter Gewalt (Sachsen-Anhalt)
### Site
http://www.mobile-opferberatung.de

### Reports location
http://www.mobile-opferberatung.de/monitoring/chronik

**TODO**


## ezra (Thüringen)
### Site
https://ezra.de/

### Reports location
https://ezra.de/chronik/

**TODO**


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


