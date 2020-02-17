class PostsController < ApplicationController
  
  get '/posts' do
   erb :public_posts
  end
  
  get '/posts/new' do
    if !logged_in?
      redirect "/login"
    else
      erb :new_post
    end
  end
  
  get '/posts/:id/edit' do
    if !logged_in?
      redirect "/login"
    else
     if post = current_user.posts.find_by(params[:id])
      
        "An edit post form #{current_user.email} is editing #{post.id}"
      else
        redirect '/posts'
    end
  end
end
  
  
end