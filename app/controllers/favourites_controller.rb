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
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to favourites_path
  end
end
