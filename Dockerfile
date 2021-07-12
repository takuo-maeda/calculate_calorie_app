FROM ruby:2.6.5

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update -qq \
  && apt-get install -y nodejs --no-install-recommends \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN npm install -g yarn 

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY Gemfile $APP_HOME/Gemfile
COPY Gemfile.lock $APP_HOME/Gemfile.lock

RUN gem install bundler && bundle install

COPY yarn.lock $APP_HOME/yarn.lock
RUN yarn install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]