class UsersController < ApplicationController
  # GET /profile/:id
  def profile
    if params[:id]
      @user = User.where(id: params[:id]).first
    elsif user_signed_in?
      @user = current_user
    end

    if @user.nil?
      flash[:alert] = "User ID #{params[:id]} does not exist."
      redirect_to root_path
    end
  end
end
