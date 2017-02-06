FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.1

RUN gem install db_obfuscation --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["db_obfuscation"]
CMD ["--help"]
