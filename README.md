This repository contains the code and content deployed to alpha.nhs.uk

## Dependencies

  - Ruby 2.2.3
  - [Bundler](http://bundler.io) (available with `gem install bundler`)

Once you've got those, install the gems with:

    bundle install

## Development

Start a server with:

    bundle exec jekyll serve --watch

Once running you'll be able to see the site at
[localhost:4000](http://localhost:4000).

## Deployment

Deployment of this app to alpha.nhs.uk requires:

  - [Deliver](https://github.com/gerhard/deliver)
  - [S3cmd](http://s3tools.org/s3cmd) (1.5.0 or higher, available through homebrew)
  - An access key and secret key for AWS

The access key and secret key are provided as environment variables when
running the command to deploy:

    AWS_ACCESS_KEY=… AWS_SECRET_KEY=… deliver --verbose
