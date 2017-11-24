class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

class PostsController < ApplicationController
before_action :authenticate_admin!, except: [:index, :show]
def index
  @posts = Post.all
end
def create
   @post = Post.new(post_params)
   if @post.save
      flash[:notice] = "Successfully created post!"
      redirect_to post_path(@post)
   else
      flash[:alert] = "Error creating new post!"
      render :new
   end
 end

 def new
   @post = Post.new
 end
 def new
  @post_ids =  Post.all.map { |post| [post.title, post.id] }
end
def show
  Post.find(params[:id])
end
end
