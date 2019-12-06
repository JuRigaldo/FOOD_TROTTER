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
    @restaurant = Restaurant.find(params[:id])
  end
end
