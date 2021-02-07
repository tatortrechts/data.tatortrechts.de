#!/usr/bin/env bash
set -e
set -x

# hacky way to adapt it to current way to handle secrets, FIXME
echo "$SECRET_MORPH_IO" >> /app/secrets.txt
echo "$USER_GEOCODE" >> /app/secrets.txt
echo "$PASSWORD_GEOCODE" >> /app/secrets.txt

# pass random argument (bash serve.sh --random) to avoid updating data
if [ -z "$1" ]; then
    echo "Fetching new data"
    mkdir -p data && rm -f input.txt && python3 add_secret.py

    # NB: file has to be ended with `\n`
    while IFS=' ' read -r url file_name; do
        wget -O data/"$file_name" "$url"
    done <input.txt
    rm input.txt
fi

rm -f rechtegewalt.db*
jupyter nbconvert --execute combine.ipynb --ExecutePreprocessor.timeout=999999999999999999
python add_geo.py
