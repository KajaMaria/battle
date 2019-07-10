require 'sinatra/base'
require 'shotgun'
require './lib/player'



class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, "Yo-yo"
  get '/' do
    erb(:index)
  end

  get '/test' do
    'Hello World!'
  end

  post '/names' do
    $player1 = Player.new(params[:name1])
    $player2 = Player.new(params[:name2])
    redirect '/play'
  end
  get '/play' do
    @name1 = $player1.name
    @name2 = $player2.name
    erb(:play)
  end
get '/attack' do
  @name1 = $player1.name
  @name2 = $player2.name
  $player2.receive_damage
  @hp2 = $player2.hp
  erb(:attack)
end

  run if app_file == $0
end
