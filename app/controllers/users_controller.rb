class UsersController < ApplicationController
  # GET /profile/:id
  # GET /profile
  def profile
    if params[:id].nil? && user_signed_in?
      @user = current_user
    else
      @user = User.find_by_id(params[:id])
    end

    if @user.nil?
      flash[:alert] = "User ID #{params[:id]} does not exist."
      redirect_to root_path
    end
  end
end
