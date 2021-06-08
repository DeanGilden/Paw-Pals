class BookingsController < ApplicationController
  before_action :set_booking, only: [ :show, :edit, :update, :destroy ]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show; end

  def new
    @booking = Booking.new
  end

  def create
    dog = Dog.find(params[:dog_id])
    @booking = Booking.new(booking_params)
    @booking.their_dog = dog
    # @booking.my_dog_id = booking_params[:my_dog_id]
    if @booking.save
      redirect_to dog_path(dog)
    else
      render :new #"dogs/show"
    end
  end

  def destroy
    dog = @booking.their_dog
    @booking.destroy
    redirect_to dog_path(dog)
    # redirect_to user_path(current_user)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date, :my_dog_id)
  end
end
