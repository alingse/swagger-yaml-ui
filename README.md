# swagger-yaml-ui

docker images support yaml 

## usage

docker build . -t swagger-yaml-ui:latest


docker run -t -i -v api.swagger.yaml:/app/:ro swagger-yaml-ui:latest
