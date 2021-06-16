class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy, :accept, :reject]

  def index
    @my_dogs_bookings = current_user.my_dogs_bookings
    @their_dogs_bookings = current_user.bookings_for_other_dogs
  end

  def show; end

  def new
    @booking = Booking.new
    @dog = Dog.find(params[:dog_id])
  end

  def create
    @dog = Dog.find(params[:dog_id])
    # @booking = Booking.new(date: booking_params[:date], my_dog_id: booking_params[:my_dog])
    @booking = Booking.new(booking_params)
    @booking.their_dog = @dog
    # @booking.my_dog_id = booking_params[:my_dog]
    if @booking.save
      redirect_to bookings_path
    else
      render :new #"dogs/show"
    end
  end

  def destroy
    dog = @booking.their_dog
    @booking.destroy
    redirect_to bookings_path
    # redirect_to user_path(current_user)
  end

  def accept
    @booking.update(accepted: true)
    redirect_to requests_path
  end

  def reject
    @booking.update(accepted: false)
    redirect_to requests_path
  end

  def requests
    @their_dogs_bookings = current_user.bookings_for_other_dogs
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date, :my_dog_id)
  end
end
