#!/usr/bin/env bash

poetry run datasette serve --config max_returned_rows:1000000 \
--load-extension=/usr/lib/x86_64-linux-gnu/mod_spatialite.so \
--cors -h 0.0.0.0 -i rechtegewalt.db -p 5000 -m metadata.json
