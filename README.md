# Fox (server)

## Requirements

* Ruby 1.9
* Bundler (`gem install bundler`)
* Memcached (`brew install memcached`)
* A Giphy API key (the public key is dc6zaTOxFJmzC)

## Setup

Copy the sample foreman enviroment, customising the Giphy keys to match either a production API key or the public beta key.

    bundle
    cp sample.env .env

## Running

    memcached &
    bundle exec foreman start

## Refreshing Gifs

Locally:

    bundle exec foreman run ruby scripts/fetch.rb

or via the Heroku Scheduler add-on:

    ruby scripts/fetch.rb

## Deploying

You also need to make sure the correct Twitter app env values are set:

    heroku config:add SUPER_AWESOME_GIPHY_KEY blahblahblah
    etc

## License

This code (not including the lyrics) is licensed under a [Creative Commons Attribution License](http://creativecommons.org/licenses/by/3.0/): you may use it, but you must give attribution.
