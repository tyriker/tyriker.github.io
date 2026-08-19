FROM ruby:3.1

WORKDIR /site

COPY Gemfile Gemfile.lock ./
RUN bundle config set path /usr/local/bundle \
    && bundle install

COPY . ./

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--port", "4000", "--force_polling", "--incremental"]
