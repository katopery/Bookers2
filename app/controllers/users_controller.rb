class UsersController < ApplicationController
  def index
  end

  def show
  end
  
  def user_params
    params.require(:user).permit(:title, :body)
  end
end
