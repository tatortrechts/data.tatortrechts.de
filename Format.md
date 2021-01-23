# Format for Incidents of Right-wing Violence

In Germany, there are multiple organizations that collect data on right-wing violence.
But there is no common format and it's mostly semi-structured text on a web page.
So we came up with a format to work with internally.

This format describes the data format / database schema for the scrapers.
This initally format will get transformed / enriched / cleaned in our pipeline (more details in [aggregate](https://github.com/rechtegewalt/data.tatortrechts.de/tree/master/aggregate)).
We will provide more information about final data at some point.

## Simplifications

For the first version of this formar, we made several simplifications.
These should be addressed in future work.

- each incident can only have one location
- each incident can only have one date
- tags, factums, motives are only concatenated lists
- each incident can have a date, but not a datetime (some chronicles provide the time in the body text (e.g. reach out))

## Overview of the Database Schema

For now, make some assumptions. An incident can only have on location and date.
This may change at a later point.

### Incident

```
{
    rg_id               : string,
    chronicler          : string,
    url                 : string,
    title               : string,
    description         : string,
    date                : UTC,
    county              : string,
    city                : string,
    motives             : [string],
    contexts            : [string],
    factums             : [string],
    tags                : [string]
}
```

### Source

Sources for an incident.

```
{
    rg_id               : string,
    name                : string,
    date                : UTC,
    url                 : string
}
```

### Chronicler

The entity (organization) that collected incidents.

```
{
    iso3166_1               : string,
    iso3166_2               : string,
    chronicler_name         : string,
    chronicler_description  : string,
    chronicler_url          : string,
    chronicle_source        : string,
}

```

## Fields for Incident

### rg_id (required)

A unique identifier for an incident (**r**echte **g**ewalt).
If the organization provides URLs for each incident, use them.
Otherwise generate some kind of unique string based on chronicle, location, date and description.
For instance, 'chronicle_name' + calculate the MD5 hash by concatenating location, date and description.

**ex.** https://muenchen-chronik.de/8-september-2018-rassistische-beleidigung-und-angriff/

### chronicler (required)

Which organisation collected the information?

**ex.** Mobile Opferberatung

### url (required)

A URL to the web pager where the incident was reported. The URL may be unique but does not have to me. Some organizations do not provide individual URLs for each incident.

**ex.** https://www.mobile-opferberatung.de/monitoring/chronik-2019/

### title

A single sentence or very short text describing the incident.

**ex.** "Hitlergruß vor der Feldherrenhalle"

### description (required)

A text describing the incident in details.

**ex.** "Am Dienstag bemerken Streifenbeamt_innen der Polizei am Odeonsplatz einen Mann, der auf der obersten Stufe der Feldherrnhalle steht und den Hitlergruß zeigt. Für etwa zehn Sekunden streckt er seinen rechten Arm in die Höhe und sucht dabei gezielt Blickkontakt mit den Einsatzkräften. Diese nehmen den 54-jährigen Wohnsitzlosen daraufhin fest."

### date (required)

When the incident happend.

**ex.** 2018-09-08T00:00:00+02:00

### city

_Ort_

### county

_Landkreis_

### motives

A list of keywords describing the motives behind the violence.

**ex.** ["Antisemitismus"]

### contexts

A list of keywords describing in what context the violence took place. It can be information about the place or the activity.

**ex.** ["Arbeitsplatz"]

### factums

German: _Delikt_, _Handlung_

A list of keywords describing the violent actions commited.

**ex.** ["Beleidigung","Sachbeschädigung"]

> For more examples of motives, contexts and factums, see https://muenchen-chronik.de/chronik/

### tags

A list of keywords that help categorizing the report but does not fall
in the motives, contexts and factums groups.

## Fields for Source

Information about the original source of the incident report.

### name

The name of the source

**ex.** Mitteilung der Bundespolizeiinspektion München

### date

When was the incident first reported by the source.

**ex.** 2018-09-08T00:00:00+02:00

### url

A link to the original source, e.g., news article.

**ex.** https://www.sueddeutsche.de/

## Fields for Aggregator

### iso3166_1 (required)

See https://en.wikipedia.org/wiki/ISO_3166-1

**ex.** "DE"

### iso3166_2

See https://en.wikipedia.org/wiki/ISO_3166-2:DE

**ex.** "DE-BE"

TODO: describe the other fields
