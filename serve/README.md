# Serving Data via Datasette

Install [poetry](https://python-poetry.org/) and install all Python dependencies:

```bash
poetry install
```

In addtion, install [spatialite](https://docs.datasette.io/en/stable/spatialite.html) (platform-dependant).

Create a file `secrets.txt` with the following three lines.

```bash
<secret-morph-io>
<user-geocode>
<password-geocode>
```

## Usage

Add more scrapers to [scrapers.txt](./scrapers.txt).

Wrangle data in [combine.ipynb](./combine.ipynb).

Execute `bash update.sh` to fetch new data.
You need to have a instace of [](https://github.com/beyondopen) running and upate the URL in combine (TODO: make this easier).

## Production

And example on how to keep it running, adapt `user` to your non-root user.

Script named `run_rg.sh`.

```bash
#!/usr/bin/env bash
cd /home/user/data.rechtegewalt.info &&
/home/user/.poetry/bin/poetry run datasette serve --config max_returned_rows:1000000 \
--load-extension=/usr/lib/x86_64-linux-gnu/mod_spatialite.so \
--cors -h 0.0.0.0 /home/user/data.rechtegewalt.info/serve/rechtegewalt.db >> /home/user/serve.log
```

Create a systemd service like this `/etc/systemd/system/rgdata.service`:

```bash
[Unit]
Description=datesette for data.rechtegewalt.info
After=network.target
StartLimitIntervalSec=0

[Service]
Type=simple
Restart=always
RestartSec=1
User=user
ExecStart=/home/user/run_rg.sh

[Install]
WantedBy=multi-user.target
```

Create a crontab entry (for root):

```bash
0 4-6 * * * systemctl stop rgdata && su - user -c "/home/user/update_rg.sh" ; systemctl start rgdata
```
