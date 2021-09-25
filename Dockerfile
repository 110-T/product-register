FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
WORKDIR /product-register
# GemfileはRail特有のファイル(pythonでいうpipみたいなもの)
# Gemfile.lockはインストールしたもののバージョンを紐づけているもの
COPY Gemfile Gemfile.lock /product-register/
# bundleはRails特有のコマンド
RUN bundle install