class UsersController < ApplicationController
  before_filter :authenticate_user!, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

end

#   def new
#     @user = User.new
#   end

#   def create
#     @user = User.new(user_params)
#     if @user.save
#       session[:user_id] = @user.id
#       flash[:notice] = "Good Job! You signed up successfully"
#       redirect_to root_url
#     else
#       render new_user_path
#     end
#   end

#   def show
#     @user = User.find(params[:id])
#   end

#   def edit
#     @user = User.find(params[:id])
#   end

#   def update
#     @user = User.find(params[:id])
#     if @user.update(user_params)
#       flash[:notice] = 'User Updated'
#       redirect_to user_path(@user)
#     else
#       flash[:notice] = 'Failed to Update'
#       redirect_to :back
#     end
#   end

#   def destroy
#     @user = User.find(params[:id])
#     @user.destroy
#     session.clear
#     flash[:notice] = "Account Deleted"
#     redirect_to logout_path
#   end

# private
#   def user_params
#     params.require(:user).permit(:name, :email, :password, :password_confirmation)
#   end

# end
