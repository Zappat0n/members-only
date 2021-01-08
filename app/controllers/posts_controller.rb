class PostsController < ApplicationController
  before_action :authenticate_member!, except: [:index]

  def new

  end

  def index
  end

  def create
  end
end
