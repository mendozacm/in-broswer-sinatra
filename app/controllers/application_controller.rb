require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "authorization"
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
  
  #post "/login" do
   # erb :"sessions/login.html"
  #end

end
