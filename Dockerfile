FROM docker:latest

RUN sed -i -e 's/v[[:digit:]]\.[[:digit:]]/edge/g' /etc/apk/repositories

RUN apk upgrade --update-cache --available

RUN apk --no-cache add go make git bash wget unzip musl-dev openssl ca-certificates protobuf protobuf-dev

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["sh"]