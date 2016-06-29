require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/score') do
  @word = params.fetch('word')
  @score = params.fetch('word').scrabble()
  erb(:score)
end
