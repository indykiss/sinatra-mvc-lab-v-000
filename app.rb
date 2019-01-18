require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do 
    @Piglatinizer = Piglatinizer.new
    @user_input = @Piglatinizer.piglatinize(params[:user_phrase])

    erb :display_piglatin
  end 
  
  
end