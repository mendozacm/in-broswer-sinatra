class PostsController < ApplicationController
  
  get '/posts' do
   "A list of publically available posts"
  end
  
  get '/posts/new' do
    if !logged_in?
      redirect "/login"
    else
      "A new post form"
    end
  end
  
  get '/posts/:id/edit' do
    if !logged_in?
      redirect "/login"
    else
     if post = current_user.posts.find_by(params[:id])
      #if post.user_id == current_user.id
        "An edit post form #{current_user.email} is editing #{post.id}"
      else
        redirect '/posts'
    end
  end
end
  
  
end