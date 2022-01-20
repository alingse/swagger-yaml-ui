#! /bin/sh
set -e

swagger-cli bundle -o $SWAGGER_JSON $SWAGGER_YAML

cd / && /usr/share/nginx/run.sh
