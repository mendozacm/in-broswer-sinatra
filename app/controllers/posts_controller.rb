
class PostsController < ApplicationController
  
  get '/posts/public' do
   erb :public_posts
  end
  
  #takes the user to a page where they create a new post
  get '/user/posts/create' do
    if !logged_in?
      redirect "/login"
    else
      erb :new_post_form
    end
  end
  
  #read find all posts for a single user
  get '/posts/:user_id' do
    @posts = Post.where(user_id:(params[:user_id]))
    erb :show
  end
  
  #read a single post based on the post id
  get '/posts/:id/single' do
    @post = Post.where(id:(params[:id]))
    erb :show_single_post
  end

  #shows the last post that was made 
  get '/posts' do
    @posts = Post.all 
    erb :single_post
  end
  
   #saves a new post into the database
  post '/posts' do
    if logged_in?
         @post = Post.new
         @post.owner_name = params[:owner_name]
         @post.location_name = params[:location_name]
         @post.dogs = params[:dogs]
         @post.cats = params[:cats]
         @post.birds = params[:birds]
         @post.user_id = current_user.id
        if @post.save
          redirect '/posts'
        else
          "that did not work"
        end
    else
      redirect to '/login'
    end
  end
  
   #shows all the posts that have been made by everyone
  get '/all/posts' do
    @posts = Post.all
    erb :all_posts 
  end
 
 
  get '/posts/:id/edit' do
    @post = Post.find_by_id(params[:id])
    
    if @post && @post.user_id == current_user.id
      erb :edit_post
    else 
      erb :filed
    end
  end
  
  get '/posts/mine' do
    erb :my_posts
  end
  
  
  
  
  
end