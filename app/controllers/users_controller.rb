class UsersController < ApplicationController
  get 'signup'
    erb :"users/new"
  end
  
  post '/users' do
    @user = User.new
    @user.email = params[:email]
    @user.password = params[:password]
    if @user.save
      ridirect '/login'
    else
      erb :"users/new"
    end
  end
end