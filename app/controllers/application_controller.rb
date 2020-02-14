require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
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
  
  post "/login" do
    erb :login
  end

end
