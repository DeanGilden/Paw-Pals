class ReviewsController < ApplicationController
  def new
   @review = Review.new
   @dog = Dog.find(params[:dog_id])
  end

  def create
    @review = Review.new(review_params)
    @dog = Dog.find(params[:dog_id])
    @review.dog = @dog
    @review.user = current_user
    if @review.save
      redirect_to dog_path(params[:dog_id])
    else
      render :new
    end
  end
  def destroy
    @review.destroy
    redirect_to dog_path(params[:dog_id])
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
