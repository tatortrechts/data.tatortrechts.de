# Format for Incidents of Right-wing Violence

In Germany, there are multiple organizations that collect data on right-wing violence.
But there is no common format and it's mostly semi-structured text on a web page.
So we came up with a format to work with internally.

## An Entry of an Incident

```
{
    url                 : string,
    rg_id               : string,
    chronicler          : string,
    title               : string,
    description         : string,
    date                : UTC,
    date_end            : UTC,
    locations           : [{
        iso3166_1    : string,
        iso3166_2    : string,
        subdivisions : [string],
        latitude     : number,
        longitude    : number
    }],
    sources             : [{
        name         : string,
        date         : UTC,
        url          : string
    }],
    motives             : [string],
    contexts            : [string],
    factums             : [string],
    tags                : [string]
}
```

## Fields

### url (required)

A URL to the web pager where the incident was reported. The URL may be unique but does not have to me. Some organizations do not provide individual URLs for each incident.

**ex.** https://www.mobile-opferberatung.de/monitoring/chronik-2019/

### rg_id (required)

A unique identifier for an incident (**r**echte **g**ewalt). If the organization provides URLs for each incident, use them. Otherwise generate some kind of unique string based on location, date and description. For instance, calculate the MD5 hash by concatenating location, date and description.

**ex.** https://muenchen-chronik.de/8-september-2018-rassistische-beleidigung-und-angriff/

### aggregator (required)

Which organisation collected the information?

**ex.** Mobile Opferberatung (Sachsen-Anhalt)

### title

A single sentence or very short text describing the incident.

**ex.** "Hitlergruß vor der Feldherrenhalle"

### description (required)

A text describing the incident in details.

**ex.** "Am Dienstag bemerken Streifenbeamt_innen der Polizei am Odeonsplatz einen Mann, der auf der obersten Stufe der Feldherrnhalle steht und den Hitlergruß zeigt. Für etwa zehn Sekunden streckt er seinen rechten Arm in die Höhe und sucht dabei gezielt Blickkontakt mit den Einsatzkräften. Diese nehmen den 54-jährigen Wohnsitzlosen daraufhin fest."

### date (required)

When the incident started

**ex.** 2018-09-08T00:00:00+02:00

### date_end

If the incident occurred over more than a single day, this field contains the date of the day when it ended.

**ex.** 2018-09-10T00:00:00+02:00


### locations

Provides additional information about where the incident happened.
The array must contain at least one entry.

### iso3166_1 (required)

See https://en.wikipedia.org/wiki/ISO_3166-1

**ex.** "DE"

### iso3166_2

See https://en.wikipedia.org/wiki/ISO_3166-2:DE

**ex.** "DE-BE"

#### subdivisions (required)

An array of names of administrative subdivisions ordered in descending precision indicating where the incident happened. Stick to German location names since the provided locations are already in German. Use a tuple with the proper German name to specify a subdivision e.g. the county (*Landkreis*). The first item is most likely the *Gemeinde*.

**ex.** ["Haldensleben", ["Landkreis", "Börde"]]

For cities, the first item is usually a district.

**ex.** [["Bezirk", "Pankow"], "Berlin"]


#### latitude/longitude (required)

Geo coordinations tuple in decimal degrees.
The coordinate system is WGS 84, the same used by OpenStreetMap.
See https://wiki.openstreetmap.org/wiki/Converting_to_WGS84

**ex.** 48.133333

### sources

Information about the original source of the incident report.

#### name

The name of the source

**ex.** Mitteilung der Bundespolizeiinspektion München

#### date

When was the incident first reported by the source.

**ex.** 2018-09-08T00:00:00+02:00

#### url

A link to the original source, e.g., news article.

**ex.** https://www.sueddeutsche.de/

### motives

A list of keywords describing the motives behind the violence.

**ex.** ["Antisemitismus"]

### contexts

A list of keywords describing in what context the violence took place. It can be information about the place or the activity.

**ex.** ["Arbeitsplatz"]

### factums

A list of keywords describing the violent actions commited.

**ex.** ["Beleidigung","Sachbeschädigung"]

> For more examples of motives, contexts and factums, see https://muenchen-chronik.de/chronik/

### tags

A list of keywords that help categorizing the report but does not fall
in the motives, contexts and factums groups.
