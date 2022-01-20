#! /bin/sh
set -e
swagger-cli bundle -o $SWAGGER_JSON $SWAGGER_YAML
/usr/share/nginx/run.sh
