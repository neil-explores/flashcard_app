FROM ruby:3.2.0

RUN apt-get update -qq && apt-get install -y \
nodejs \
libssl-dev \ 
libreadline-dev \
zlib1g-dev \
build-essential \
curl \
imagemagick

WORKDIR /install_gems

COPY Gemfile /install_gems/Gemfile
COPY Gemfile.lock /install_gems/Gemfile.lock

Run gem install bundler -v 2.3.5 && bundle install

WORKDIR /

EXPOSE 3000

CMD ["/bin/bash"]