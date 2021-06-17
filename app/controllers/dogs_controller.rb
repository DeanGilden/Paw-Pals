class DogsController < ApplicationController
  before_action :set_dog, only: [ :show, :edit, :update, :destroy ]

  def index
    if params[:query].present?
      @dogs = User.near(params[:query]).flat_map { |user| user.dogs }
    else
      @dogs = Dog.all
    end
  end

  def show
    @markers = [
      {
        lat: @dog.user.latitude,
        lng: @dog.user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: @dog.user }),
        image_url: helpers.asset_url('dog.png')
      }]
    #@reviews = Review.where(dog_id: params[:id])
    @reviews = @dog.reviews
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
    if @dog.save
      sleep(2)
      redirect_to dogs_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @dog.update(dog_params)
    @dog.save
    redirect_to dog_path(@dog)
  end

  def destroy
    @dog.destroy
    redirect_to dogs_path
  end

  def toggle_favourite
    @dog = Dog.find_by(id: params[:id])
    current_user.favorited?(@dog) ? current_user.unfavorite(@dog) : current_user.favorite(@dog)
  end

private

  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :age, :sex, :description, :temperament, photos: [])
  end
end
