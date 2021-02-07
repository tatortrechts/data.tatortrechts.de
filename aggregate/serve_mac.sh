#!/usr/bin/env bash

datasette  serve --config max_returned_rows:1000000 \
--load-extension=/usr/local/lib/mod_spatialite.dylib rechtegewalt.db
