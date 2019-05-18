# docker-rails-tutorial

Example of Spring integration in Docker container.

## Start Rails server

```
docker-compose up -d
```

then open http://localhost:3000

## Run RSpec

```
docker-compose run --rm web bin/rspec
```

then RSpec will run with Spring integration.
