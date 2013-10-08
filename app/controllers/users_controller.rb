class UsersController < ApplicationController
  # GET /profile/:id
  # GET /profile
  def profile
    @user = User.find_by_id(params[:id])
    if @user.nil? && user_signed_in?
      @user = current_user
    end

    if @user.nil?
      flash[:alert] = "User ID #{params[:id]} does not exist."
      redirect_to root_path
    end
  end
end
