class WelcomeController < ApplicationController
  # GET /index
  def index
    @posts = Post.order(:id).page params[:page]
  end
end
