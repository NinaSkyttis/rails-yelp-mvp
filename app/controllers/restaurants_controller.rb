class RestaurantsController < ApplicationController


  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params['id'])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else

    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :category, :phone_number, :address)
  end
end
