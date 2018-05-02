require 'sinatra/base'
require_relative 'lib/player.rb'


class Battle < Sinatra::Base
  configure do
   enable :sessions
   set :session_secret, "My session secret"
 end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:name1])
    $player2 = Player.new(params[:name2])
    redirect('/play')
  end

  get '/play' do
    @name1 = $player1.name
    @name2 = $player2.name
    erb(:play)
  end

  get '/attack' do
    @name2 = $player2.name
    erb(:attack)
  end

  run! if app_file == $0
end
