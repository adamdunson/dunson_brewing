class WelcomeController < ApplicationController
  # GET /index
  def index
    @posts = Post.order('id DESC').page params[:page]
  end
end
