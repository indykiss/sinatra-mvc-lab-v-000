require_relative 'config/environment'

class App < Sinatra::Base
  
  
  get '/' do 
    
  erb :user_input
  end 
  
  post '/piglatinize' do 
    @piglatinizer = Piglatinizer.new
    @user_phrase = @Piglatinizer,piglatinize(params[:user_phrase])

    erb :display_piglatin
  end 
  
  
end