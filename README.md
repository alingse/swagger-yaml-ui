# swagger-yaml-ui

docker images support yaml 

## dev

build

```bash
docker build . -t swagger-yaml-ui:latest
```

run

```bash
docker run -t -i -v `pwd`/example.yaml:/app/swagger.yaml:ro swagger-yaml-ui:latest
```

or docker-compose



