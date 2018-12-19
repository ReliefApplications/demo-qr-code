#!/bin/bash

# optional parameters: additional parameters to supply to aws (e.g. profile)

# build the project (contents will be in directory dist/bms-front)
ng build --prod
echo "==="
echo "Build complete"

# copy .htaccess to dist
cp .htaccess dist/demo-qr-code

# deploy on reliefapps server
rsync -ravzh dist/ tester@217.70.188.94:/var/www/html/

echo "==="
echo "Upload complete"
