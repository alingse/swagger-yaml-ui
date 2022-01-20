FROM swaggerapi/swagger-ui

WORKDIR /app

ENV SWAGGER_YAML "/app/swagger.yaml"

COPY . ./

RUN chmod +x /app/run.sh && \
    npm i swagger-cli

EXPOSE 8080

CMD ["sh", "/app/run.sh"]
