class SessionsController < ApplicationController
  
  get '/login' do
    erb :"sessions/login.html"
  end
  
  get '/logged_in' do
    if logged_in?
    erb :user_homepage
    else
      redirect '/'
    end
    
  end
  
  post '/sessions' do
    login(params[:email], params[:password])
    redirect '/logged_in'
  end
  
  get '/logout' do
    logout!
    redirect '/'
  end
end