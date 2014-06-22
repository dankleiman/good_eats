class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

   def recent
    @restaurants = Restaurant.order(created_at: :desc).limit(10)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      flash[:notice] = "Successfully added restaurant."
      redirect_to restaurants_path
    else
      flash[:notice] = "Could not add restaurant."
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, :state, :zip, :description, :category)
  end
end
