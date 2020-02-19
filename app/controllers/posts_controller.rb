class PostsController < ApplicationController
  
  get '/posts' do
    #posts that non users can see
   erb :public_posts
  end
  
  get '/posts/new' do
    #checking to see if the user is logged in
    if !logged_in?
      #if not logged in then redirect to the login page
      redirect "/login"
    else
      #if they are logged in then redirect to 
      erb :new_post
    end
  end
  
   post '/new_post' do
    @post = Post.new
    @post.owner_name = params[:owner_name]
    @post.dogs = params[:dogs]
    @post.cats = params[:cats]
    @post.birds = params[:birds]
    if @post.save
      redirect '/logged_in'
    else
    erb :"/new_post"
    end
  end
  
  post '/new_posts/all_posts' do
    erb :all_posts
  end
 
 
  
  
  get '/posts/:id/edit' do
    if !logged_in?
      redirect "/login"
    else
     if post = current_user.posts.find_by(params[:id])
      
        "An edit post form #{current_user.email} is editing #{post.id}"
      else
        redirect '/logged_in'
    end
  end
end
  
  
end