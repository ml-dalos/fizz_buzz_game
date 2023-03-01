# copy from .ruby-version or Gemfile
ARG RUBY_VERSION=3.2.0
FROM ruby:$RUBY_VERSION-alpine

WORKDIR /app

# Install application gems
ENV BUNDLE_WITHOUT="development test"
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy application code
COPY . .

CMD "bin/run"
