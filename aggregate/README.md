# Serving Data via Datasette

Install [poetry](https://python-poetry.org/) and install all dependencies:

```bash
poetry install
```

In addition, install [spatialite](https://docs.datasette.io/en/stable/spatialite.html) (platform-dependant).

Create a file `secrets.txt` with the following three lines.

```bash
<secret-morph-io>
<user-geocode>
<password-geocode>
```

## Usage

Add more scrapers to [scrapers.txt](./scrapers.txt).

Wrangle data in [combine.ipynb](./combine.ipynb).

Run `./update.sh` to fetch and process new data.
You need to have a instace of [geocode-cache-service](https://github.com/beyondopen/geocode-cache-service) running and specify the URL of this instance in [combine.ipynb](./combine.ipynb) (TODO: make this easier).

## Production

Adapt `user` to your non-root user account in [serve.sh](./serve.sh).

Create a systemd service like this `/etc/systemd/system/rgdata.service` (adapt the path of `serve.sh`):

```
[Unit]
Description=serve datasette for rechtegewalt
After=network.target
StartLimitIntervalSec=0

[Service]
Type=simple
Restart=always
RestartSec=1
User=user
ExecStart=/home/user/data.tatortrechts.de/aggregate/serve.sh

[Install]
WantedBy=multi-user.target
```

Create a crontab entry (for root) so new data gets fetched automatically:

```bash
0 4-6 * * * systemctl stop rgdata && su - user -c "/home/user/update_rg.sh" ; systemctl start rgdata
```

The update scipt can look like this:

```bash
#!/usr/bin/env bash
cd /home/user/data.tatortrechts.de/aggregate/ && /home/user/.poetry/bin/poetry run ./update.sh
```
