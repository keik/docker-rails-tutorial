# docker-rails-tutorial

Example of Dockerized Rails app which contains following:

* Use Docker as development environment, no need to install Ruby and Node on your host.
* No duplicated configurations of environment definitions.
* Integrate Spring with RSpec and other stuffs.

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
