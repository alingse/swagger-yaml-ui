FROM swaggerapi/swagger-ui

RUN apk add --update npm && \
    npm install -g @apidevtools/swagger-cli

WORKDIR /app

ENV SWAGGER_YAML "/app/swagger.yaml"

RUN chmod +x run.sh


EXPOSE 8080

CMD ["sh", "/app/run.sh"]
