FROM ruby:3.1.3-alpine
RUN apk update && apk add build-base nodejs npm postgresql-dev tzdata
RUN mkdir /app
WORKDIR /app
ADD . /app
RUN bundle
RUN npm i -g yarn && yarn install
RUN rake assets:precompile
ENTRYPOINT ["bin/prod"]