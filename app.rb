require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "secret"
      end 

  get '/' do
    erb :index
  end

  post '/checkout' do
 
    session[:item] = params[:item]
    #i added an items key to sessions
    @session = session
    #set a global variable for the current session hash with the item that was added
    
    erb :checkout
  end

end