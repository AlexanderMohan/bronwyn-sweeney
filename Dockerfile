FROM ruby:3.1.3-alpine
RUN apk update && apk add build-base nodejs npm postgresql-dev tzdata
RUN mkdir /app
WORKDIR /app
ADD . /app
RUN echo "MAILERSEND_API_TOKEN=null" > .env
RUN bundle
RUN npm i -g yarn && yarn install
ENV ASSET_PRECOMPILE=1
RUN rake assets:precompile
RUN rm -rf .env
ENV ASSET_PRECOMPILE=
EXPOSE 3000
ENTRYPOINT ["bin/prod"]
LABEL org.opencontainers.image.description="Web app for Bronwyn Sweeney with editable content blocks and smart features"