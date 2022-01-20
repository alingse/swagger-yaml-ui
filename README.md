# swagger-yaml-ui

docker images support yaml 

## dev

build

```bash
docker build . -t swagger-yaml-ui:latest
```

run

```bash
docker run -v `pwd`/example.yaml:/app/swagger.yaml swagger-yaml-ui:latest
```

or in docker-compose.yaml


```yaml
  swagger-yaml-ui:
    image: swagger-yaml-ui:latest
    container_name: "swagger-yaml-ui"
    volumes:
      - ./example.yaml:/app/swagger.yaml:ro
    environment:
      BASE_URL: "/swagger"
    ports:
      - "9590:8080"
```
