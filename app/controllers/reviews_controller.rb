class ReviewsController < ApplicationController
  def index
      @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Restaurant.new(review_params)
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  def delete
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
