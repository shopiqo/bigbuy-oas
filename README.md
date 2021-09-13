# BigBuy API specifications

### Generate/rebuild specifications

```
./bin/build
```

### Generate API client

```
docker run --rm -v $PWD:/app openapitools/openapi-generator-cli \
    generate \
    -i /app/dist/v1/openapi.yaml \
    -g php \
    -o /app/clients/v1/php \
    --skip-validate-spec \
    --git-repo-id bigbuy-php-sdk \
    --git-user-id efsa-io
```