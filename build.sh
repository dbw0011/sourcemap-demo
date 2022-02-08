#!/bin/bash
CODE_VERSION=$1
ACCESS_TOKEN=0e1ef18187144c818c14868fc219fc9b

echo "Building minified file and source map"

node_modules/uglify-js2/bin/uglifyjs2 app.js --mangle --source-map app.min.map --source-map-include-sources 1 > app.min.js


echo "Uploading source map for code version $CODE_VERSION"

curl https://api.rollbar.com/api/1/sourcemap \
  -F access_token=$ACCESS_TOKEN \
  -F version=$CODE_VERSION \
  -F minified_url=http://localhost:8787/app.min.js \
  -F source_map=@app.min.map
