class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def dogs
    @dogs = Dog.where(user: current_user)
  end
end
