# swagger-yaml-ui

docker images support yaml 

## Usage

serve yaml file

```bash
docker run -p 0.0.0.0:80:8080/tcp -v `pwd`/example.yaml:/app/swagger.yaml alingse/swagger-yaml-ui:latest
```


or used in docker-compose.yaml


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

## Dev


build

```bash
docker build . -t alingse/swagger-yaml-ui:latest
```

publish

```bash
docker push alingse/swagger-yaml-ui:latest
```

example yaml

see https://petstore.swagger.io/ and https://editor.swagger.io/

