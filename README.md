`Github` repo is a mirror of a `Gitlab` repo

# Json schema to BQ Schema

This is a container packaging [jsonschema-bigquery](https://github.com/thedumbterminal/jsonschema-bigquery) to generate BQ Schema from [JSON Schema](http://json-schema.org/). Purpose of this pacakge is to provide convenience of avoiding installing all tools and requirements to use jsonschema-bigquery to generate bigquery schema from JSON schema

# To build on local

> `docker build  --build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') -t darahsan/jsonschema2bqschema:latest .`

> `docker run -i darahsan/jsonschema2bqschema:latest  < input-schema.json > output-bq-schema.json`
> 
> `docker run -i -e OPTIONS='--preventAdditionalObjectProperties' darahsan/jsonschema2bqschema:latest  < input-schema.json > output-bq-schema.json`

`jsonschema2bqschema` variable takes  `jsonschema-bigquery` `options` and input `json schema`. It doesn't take `-p` `-d` flags as its not intended to interact with Google BigQuery when generating `BQ` schema. 


# To run via docker on your files locally

> `docker run -i darahsan/jsonschema2bqschema:latest  < input-schema.json > output-bq-schema.json`
> 
> `docker run -i -e OPTIONS='--preventAdditionalObjectProperties' darahsan/jsonschema2bqschema:latest  < input-schema.json > output-bq-schema.json`



#  To go inside the container for fun or else 


> `docker-compose up`

> `docker exec -it jsonschema2bqschema sh`