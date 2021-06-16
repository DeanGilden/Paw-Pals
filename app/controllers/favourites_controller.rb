class FavouritesController < ApplicationController
  def new
    @favourite = Favourite.new
  end

  def create
    @favourite = Favourite.new()
    @favourite.dog_id = params[:dog_id]
    @favourite.user = current_user

    if @favourite.save
      redirect_to favourites_path

    else
      render 'dogs/show'
    end
  end

  def index
    @favourites = Favourite.where(user: current_user)
    @favorite_dogs = current_user.favorited_by_type('Dog')

  end

  def destroy
    dog = Dog.find(params[:id])
    current_user.unfavorite(dog)
    redirect_to favourites_path
  end
end
