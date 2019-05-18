FROM ruby:2.6

# temporary
RUN apt-get update -qq && apt-get install -y nodejs
# TODO: use version in .nvmrc like:
# RUN curl -s -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | sh \
#     && . ~/.profile; nvm install

RUN mkdir /app
WORKDIR /app
ADD . /app

EXPOSE 3000
