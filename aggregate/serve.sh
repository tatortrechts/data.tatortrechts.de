#!/usr/bin/env bash

# replace `user` with your user account

cd /home/user/data.rechtegewalt.info &&
/home/user/.poetry/bin/poetry run datasette serve --config max_returned_rows:1000000 \
--load-extension=/usr/lib/x86_64-linux-gnu/mod_spatialite.so \
--cors -h 0.0.0.0 /home/user/data.rechtegewalt.info/aggregate/rechtegewalt.db >> /home/user/serve.log
