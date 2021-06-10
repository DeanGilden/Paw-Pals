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
    @users = User.all
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: user }),
        image_url: helpers.asset_url('dog.png')
      }
    end
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
    if @dog.save
      redirect_to dog_path(@dog)
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

private

  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :age, :sex, :description, :temperament, photos: [])
  end
end
