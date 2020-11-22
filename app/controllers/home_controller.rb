class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  def index
    @post = Post.new
    @posts = Post.all.paginate(page:params[:page],per_page:10)
  end
  def start
  end
end
