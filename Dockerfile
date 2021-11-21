FROM ruby:2.6.6
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN apt-get install -y npm
WORKDIR ../
COPY . .

ARG APP_DB_USER
ARG APP_DB_PASS
ARG POSTGRES_PORT
ARG APP_DB_NAME
ARG SECRET_KEY_BASE

ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true
ENV BUNDLER_WITHOUT development test
ENV SECRET_KEY_BASE "06267e61829d574f7698dd038d689f28dc498b9088312a4064771bf4340ce3ccc32198c71f18565508a2deee13d56eda9ed287de3870910196e0b2580c5d44e2"
ENV APP_DB_USER ${APP_DB_USER}
ENV APP_DB_PASS ${APP_DB_PASS}
ENV POSTGRES_PORT ${POSTGRES_PORT}
ENV APP_DB_NAME ${APP_DB_NAME}

RUN gem install bundler:2.2.27
RUN bundle lock --add-platform x86_64-linux
RUN bundle config --global frozen 1
RUN bundle install
RUN npm install yarn -g
RUN bundle exec rake assets:precompile
RUN chmod +x entrypoint/docker-entrypoint.sh

EXPOSE 3000

ENTRYPOINT ["./entrypoint/docker-entrypoint.sh"]