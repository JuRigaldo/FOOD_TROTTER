class SpecialtiesController < ApplicationController

  def index
    @specialties = Specialty.all
  end
end
