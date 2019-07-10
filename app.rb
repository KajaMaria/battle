require 'sinatra/base'
require 'shotgun'



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
    session['name1'] = params['name1']
    session['name2'] = params['name2']
    redirect "/play"
  end
  get '/play' do
    @name1 = session['name1']
    @name2 = session['name2']
    erb(:play)
  end
get '/attack' do
  @name1 = session['name1']
  @name2 = session['name2']
  erb(:attack)
end

  run if app_file == $0
end
