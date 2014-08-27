class LocationsController < ApplicationController

  def index
    @locations = Location.all
    render('locations/index.html.erb')
  end

  def create
    @locations = Location.all
    @location = Location.new(params[:location])
    @location.save
    render('locations/index.html.erb')
  end

  def show
    @locations = Location.all
    @location = Location.find(params[:id])
    render('locations/show.html.erb')
  end

end