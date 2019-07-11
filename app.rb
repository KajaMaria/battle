require 'sinatra/base'
require 'shotgun'
require './lib/player'
require './lib/game'



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
    player1 = Player.new(params[:name1])
    player2 = Player.new(params[:name2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end
  get '/play' do
    @name1 = $game.player1.name
    @name2 = $game.player2.name
    @current_player = $game.current_player.name
    erb(:play)
  end
get '/attack' do
  @name1 = $game.player1.name
  @name2 = $game.player2.name
  $game.player2.receive_damage
  @hp2 = $game.player2.hp
  erb(:attack)
end

post '/switch' do
  $game.switch_turns
  redirect '/play'
end

  run if app_file == $0
end
