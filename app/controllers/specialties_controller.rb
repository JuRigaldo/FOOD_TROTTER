class SpecialtiesController < ApplicationController


  def index
    if params["search"]
      @filter = params["search"]["categories"].concat(params["search"]["timetoeats"]).flatten.reject(&:blank?)
      @specialties = Specialty.all.global_search("#{@filter}")
      # @specialties = @specialties.all.tagged_with(@filter, any: true)
    else
      @specialties = Specialty.all
    end
  end

  def show
    @specialty = Specialty.find(params[:id])
  end

end
