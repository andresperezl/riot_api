# RiotApi
[![Gem Version](https://badge.fury.io/rb/riotapi.svg)](https://badge.fury.io/rb/riotapi)
[![Build Status](https://travis-ci.org/andresperezl/riot_api.svg?branch=master)](https://travis-ci.org/andresperezl/riot_api)

Gem to easily interact with the Riot API

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'riotapi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install riotapi

## Usage

First set the enviroment variable `RIOT_API_KEY` with the key provided by [Riot](https://developer.riotgames.com), or
configure the gem with your key

```ruby
RiotAPI.configure do |config|
  config.api_key = 'YOU_API_KEY_HERE'
end
```

You could additionally set the endpoint region with `config.region=` to any of the slugs from `RiotAPI::Region.all`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/riot_api.

