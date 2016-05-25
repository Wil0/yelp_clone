class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def  create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant.reviews.create(review_prams)
    redirect_to '/restaurants'
  end

  private

  def review_prams
    params.require(:review).permit(:thoughts, :rating)
  end
end
