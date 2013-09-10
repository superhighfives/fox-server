require 'sinatra'
require 'sinatra/cross_origin'
require 'sinatra/jsonp'
require 'dalli'
require 'json'
require 'giphy'
require 'newrelic_rpm'

require_relative './lib/lyrics'
require_relative './lib/gif_searcher'
require_relative './lib/gif_cache'

# CORS related configs
enable :cross_origin
set :allow_methods, [:get, :options]
set :allow_credentials, false
set :max_age, "1728000"

set :gif_searcher, GifSearcher.new
set :gif_cache, GifCache.new(
  ::Dalli::Client.new(ENV['MEMCACHIER_SERVERS'].split(','),
                      username: ENV['MEMCACHIER_USERNAME'],
                      password: ENV['MEMCACHIER_PASSWORD'],
                      namespace: 'fox')
)

configure :development do
  # Fix thin logging
  $stdout.sync = true

  require 'sinatra/reloader'

  set :allow_origin, '*'
end

configure :production do
  set :allow_origin, 'http://fox.wearebrightly.com'
end

helpers do
  def gif_searcher
    settings.gif_searcher
  end
  def gif_cache
    settings.gif_cache
  end
end

before do
  response.headers["Access-Control-Allow-Headers"] = "x-requested-with"
end

get '/data.json' do
  content_type :json
  results = Lyrics.all.collect {|lyric|
    {
      id: lyric.id,
      line: lyric.line,
      keyword: lyric.keyword,
      time: lyric.time,
      image: gif_cache.get(lyric)
    }
  }
  jsonp results
end