require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
  
  erb :user_input
  end 
  
  post '/' do
    @analyzed_text = .new(params[:user_text])

    erb :results
  end
  
  
  end 
end