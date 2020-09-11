from pathlib import Path

import dataset
import requests

urls = Path('scrapers.txt').read_text().split()
key = Path('secrets.txt').read_text().split()[0]
key_url = '/data.sqlite?key=' + key

to_download = []

# only fetch new data if needed

for x in urls:
    morph_api_url = x.replace('morph.io', 'api.morph.io') + '/data.json'
    print(morph_api_url)
    r = requests.get(morph_api_url, params={
    'key': key,
    'query': 'select count(*) from "incidents"'
    })

    r.raise_for_status()

    db_name = x.split('/')[-1] + '.db'
    db = dataset.connect(f'sqlite:///data/{db_name}')
    db_count = db['incidents'].count()

    morph_count = r.json()[0]['count(*)']
    print(db_count, morph_count)
    if db_count != morph_count:
        to_download.append(x + key_url + ' ' + db_name)

Path('input.txt').write_text('\n'.join(to_download))
