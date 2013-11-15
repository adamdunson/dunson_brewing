class WelcomeController < ApplicationController
  # GET /index
  def index
    @posts = Post.order('id DESC').page params[:page]
  end

  # GET /beer
  def beer
    @beers = Beer.order('name').page params[:page]
  end

  # GET /who
  def who
    @users = User.order('first_name, last_name').page params[:page]
  end
end
