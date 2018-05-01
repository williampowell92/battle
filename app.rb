require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @name1 = params[:name1]
    @name2 = params[:name2]
    erb '<%= "#{@name1} vs #{@name2}" %>' 
  end

  run! if app_file == $0
end
