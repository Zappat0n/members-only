class PostsController < ApplicationController
  include PostsHelper

  before_action :authenticate_user!, except: [:index]

  def new
    @post = current_user.posts.build
  end

  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])

  end

  def create
    @post = current_user.posts.build(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: 'post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
end
