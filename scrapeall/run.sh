#!/usr/bin/env bash
set -e
set -x

# replacement for morph.io since it's often down

# hotfix because the file has to end with newline
echo "" >>input.txt

# NB: file has to be ended with `\n`
while IFS=' ' read -r url file_name; do
    # replace morph urls
    githuburl="${url/morph.io/github.com}"
    # fetch code from github
    git clone "$githuburl" && cd "$(basename "$githuburl" .git)"

    if [ -f "pyproject.toml" ]; then
        # install poetry and run scraper
        poetry install && poetry run python scraper.py
    else
        # fallback to pip without virtual env
        pip install -r requirements.txt && python scraper.py
    fi

    # move to output location
    mv data.sqlite /data/"$(basename "$githuburl")".db
    cd ../
done <input.txt
