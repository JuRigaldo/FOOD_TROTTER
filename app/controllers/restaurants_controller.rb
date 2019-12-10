class RestaurantsController < ApplicationController

  def index
    @specialty_restaurants = SpecialtyRestaurant.where(specialty: params[:specialty_id])
    @specialty = Specialty.find(params[:specialty_id])

    @restaurants = Restaurant.geocoded
    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { restaurant: restaurant }),
        image_url: helpers.asset_url('fourchette.png')
      }
    end
  end

  def show
    @restaurant = Restaurant.geocoded.find(params[:id])
    @markers = [
      {
        lat: @restaurant.latitude,
        lng: @restaurant.longitude,
        infoWindow:render_to_string(partial: "info_window", locals: { restaurant: @restaurant }),
        image_url: helpers.asset_url('fourchette-small.png')
    }]
  end

  def map
    @restaurant = Restaurant.geocoded.find(params[:restaurant_id])
    @markers = [
      {
        lat: @restaurant.latitude,
        lng: @restaurant.longitude,
        infoWindow:render_to_string(partial: "info_window", locals: { restaurant: @restaurant }),
        image_url: helpers.asset_url('fourchette-small.png')
    }]
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
