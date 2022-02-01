# BigBuy API specifications

### Generate/rebuild specifications

```
./bin/build
```

### Swagger UI

```
docker run \
  --rm \
  -p 8080:8080 \
  -v `pwd`:/usr/share/nginx/html/public \
  -e API_URL=public/dist/v1/openapi.yaml \
  -e VALIDATOR_URL=none \
  -e TRY_IT_OUT_ENABLED=true \
  -e DISPLAY_REQUEST_DURATION=true \
  -e DISPLAY_OPERATION_ID=true \
  swaggerapi/swagger-ui
```

### Generate API client

```
docker run --rm -v $PWD:/app openapitools/openapi-generator-cli \
    generate \
    -i /app/dist/v1/openapi.yaml \
    -g php \
    -o /app/clients/v1/php \
    --skip-validate-spec \
    --git-user-id efsa-io \
    --git-repo-id bigbuy-php-api-client \
    --additional-properties packageName=BigbuyApi
```
