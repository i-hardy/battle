require 'sinatra/base'

class Battle < Sinatra::Base

  run! if app_file == $0

  get '/' do
    # 'Testing infrastructure working!' Not sure if we still need this??
    erb :index
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :play
  end

end
