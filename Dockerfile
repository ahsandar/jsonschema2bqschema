FROM node:11.14.0-alpine

LABEL maintainer="ahsan.dar@live.com"

ARG BUILD_DATE
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.name="ahsan/jsonschema2bqschema"
LABEL org.label-schema.description="BQ Schema generator from a JSON Schema object"
LABEL org.label-schema.url="https://github.com/ahsan/jsonschema2bqschema"

ENV PROJECT_ROOT /src/jsonschema2bqschema
ENV PATH ${PROJECT_ROOT}/bin:$PATH
ENV PATH ${PROJECT_ROOT}/node_modules/.bin:$PATH

WORKDIR ${PROJECT_ROOT}

RUN apk add --no-cache \
    python \
    make \
    g++ \
    jq

ADD package.json .
ADD package-lock.json .
RUN npm install -g && \
    npm cache --force clean

COPY . .

ENTRYPOINT ["jsonschema2bqschema"]
