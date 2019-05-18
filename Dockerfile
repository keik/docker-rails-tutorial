FROM ruby:2.6

RUN mkdir /app
WORKDIR /app
ADD . /app

RUN git clone https://github.com/nodenv/nodenv.git ~/.nodenv \
    && git clone https://github.com/nodenv/node-build.git "$(~/.nodenv/bin/nodenv root)"/plugins/node-build \
    && ~/.nodenv/bin/nodenv install

ENV PATH=$PATH:/root/.nodenv/shims

EXPOSE 3000
