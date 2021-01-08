class PostsController < ApplicationController
  include PostsHelper

  before_action :authenticate_user!, except: [:index]

  def new
    @post = current_user.posts.build
  end

  def index
  end

  def create

  end
end
