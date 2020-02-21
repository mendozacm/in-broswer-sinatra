class PostsController < ApplicationController
  
  get '/posts/public' do
   erb :public_posts
  end
  
  #new post form
  get '/posts/create' do
    if !logged_in?
      redirect "/login"
    else
      erb :new_post_form
    end
  end
  
  #create
  post '/posts' do 
    @post = Post.create(params)
   
  end
  
  #index
  get '/posts' do
    @posts = Post.all 
    erb :single_post
  end
  
   
  post '/new_posts' do
    if logged_in?
         @post = Post.new
         @post.owner_name = params[:owner_name]
         @post.location_name = params[:location_name]
         @post.dogs = params[:dogs]
         @post.cats = params[:cats]
         @post.birds = params[:birds]
         @post.user_id = current_user.id
        if @post.save
          erb :all_posts
        else
          "that did not work"
        end
    else
      redirect to '/login'
    end
  end
  
   
  get '/all_posts' do
    @posts = Post.all
    erb :multiple_posts 
  end
  
  
  get '/new_posts' do
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