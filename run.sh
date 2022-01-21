#! /bin/sh
set -e

swagger-cli bundle -o $SWAGGER_JSON $SWAGGER_YAML
echo "start serve swagger"
cd / && /usr/share/nginx/run.sh
