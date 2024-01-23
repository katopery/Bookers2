class UsersController < ApplicationController
  def index
    @users = User.all
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @user.id = current_user.id
  end
  
  
  private

  def user_params
    params.require(:user).permit(:name, :introduction)
  end
end
