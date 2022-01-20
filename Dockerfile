FROM swaggerapi/swagger-ui

RUN apk update && apk add --no-cache "npm" && \
    npm i swagger-cli


WORKDIR /app

ENV SWAGGER_YAML "/app/swagger.yaml"

COPY . ./

RUN chmod +x /app/run.sh

EXPOSE 8080

CMD ["sh", "/app/run.sh"]
