class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
    flash[:notice] = "Restaurant created successfully"
    redirect_to restaurant_path(@restaurant)
    else
      flash[:alert] = "Error creating restaurant"
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

end
