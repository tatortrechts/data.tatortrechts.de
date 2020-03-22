#!/usr/bin/env bash
set -e
set -x

# pass random argument (bash serve.sh --random) to avoid updating data
if [ -z "$1" ]; then
    echo "Fetching new data" &&
    mkdir -p data && rm -f data/* && rm -f input.txt && python3 add_secret.py &&
    i=0 &&
    wget -i input.txt -P data &&
    for fn in data/*; do
        mv $fn data/data_$i.db
        i=$(( i + 1 ))
    done && rm input.txt
fi

# install dependencies, wrangle data, serve
pip3 install datasette datasette-cluster-map clean-text dataset requests notebook &&
rm -f rechtegewalt.db* ; jupyter nbconvert --execute combine.ipynb --ExecutePreprocessor.timeout=999999999999999999 &&
datasette serve --cors -h 0.0.0.0 -i rechtegewalt.db 
