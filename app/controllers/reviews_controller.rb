class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    id = params[:review][:restaurant_id]
    @review = Review.new(review_params)
    @review.restaurant_id = id
    if @review.save
      flash[:notice] = "Successfully added."
      redirect_to restaurant_path(id)
    else
      flash[:notice] = "Could not add review."
      redirect_to new_restaurant_review_path(id)
    end
  end

  private

  def review_params
    params.require(:review).permit(:body, :rating)
  end
end
