# Serving Data via Datasette

Install dependencies.

```bash
pip3 install datasette datasette-cluster-map clean-text dataset requests notebook 
```

Create a file `secrets.txt` with the following three lines.

```bash
<secret-morph-io>
<user-geocode>
<password-geocode>
```

Then execute `bash update.sh`.

To serve data, run `datasette serve -h 0.0.0.0 --cors -i rechtegewalt.db`

Add more scrapers to [scrapers.txt](./scrapers.txt).

Wrangle data in [combine.ipynb](./combine.ipynb).

