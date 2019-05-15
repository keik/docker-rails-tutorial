FROM ruby:2.6

ENV APP_ROOT /myapp

WORKDIR $APP_ROOT

ADD . /myapp

RUN bundle install

RUN curl -s -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | sh \
    && . ~/.profile; nvm install

EXPOSE 3000

CMD ./envwrapper bin/rails s -b 0.0.0.0