# swagger-yaml-ui

docker images support yaml 

## dev

build

```bash
docker build . -t alingse/swagger-yaml-ui:latest
```

run serve

```bash
docker run -p 0.0.0.0:80:8080/tcp -v `pwd`/example.yaml:/app/swagger.yaml alingse/swagger-yaml-ui:latest
```

or use in docker-compose.yaml


```yaml
  swagger-yaml-ui:
    image: alingse/swagger-yaml-ui:latest
    container_name: "swagger-yaml-ui"
    volumes:
      - ./example.yaml:/app/swagger.yaml:ro
    environment:
      BASE_URL: "/swagger"
    ports:
      - "80:8080"
```
