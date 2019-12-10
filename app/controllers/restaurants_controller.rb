class RestaurantsController < ApplicationController

  def index
    @specialty_restaurants = SpecialtyRestaurant.where(specialty: params[:specialty_id])
    @specialty = Specialty.find(params[:specialty_id])

    @restaurants = Restaurant.geocoded
    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { restaurant: restaurant })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end

  def show
    @restaurant = Restaurant.geocoded.find(params[:id])
    @markers = [
      {
        lat: @restaurant.latitude,
        lng: @restaurant.longitude,
        infoWindow:render_to_string(partial: "info_window", locals: { restaurant: @restaurant })
    }]
  end

  def map
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def like
    @restaurant = Restaurant.find(params[:id])
    if current_user.favorited?(@restaurant)
      current_user.unfavorite(@restaurant)
      result = {liked: false}
    else
      current_user.favorite(@restaurant)
      result = {liked: true}
    end
    render json: result
  end
end
