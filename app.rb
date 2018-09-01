require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
  
  erb :user_input
  end 
  
  post '/' do
    @latinized_text = PigLatinizer.new(params[:string])

    erb :result
  end
  
  
  end 
end