FROM --platform=linux/amd64 ruby:2.4.1

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /home/app
ADD Gemfile* $WORKDIR/
RUN bundle install


ENV PORT 3000

EXPOSE $PORT

ENTRYPOINT [ "/bin/bash" ]

