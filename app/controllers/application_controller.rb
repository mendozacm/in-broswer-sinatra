require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "authorization"
  end
  
  helpers do
    
    def logged_in?
      #checks to see if you're logged in
      !!current_user
    end
    
    
    def current_user
      #defines the current user if the email is equal to session email
      @current_user ||= User.find_by(:email => session[:email]) if session[:email]
    end
  
    def login(email, password)
      user = User.find_by(:email => email) 
      if user && user.authenticate(password)
        session[:email] = user.email
      else
        redirect '/login'
      end
    end
  
    
    def logout!
      session.clear
    end
      
  end
  
  get "/" do
    erb :homepage
  end

  
  post "/new-account" do
    erb :new_account
  end
  
  post "/new_account_homepage" do
    erb :new_account_homepage
  end

  
  
  

end
