class LocationsController < ApplicationController

  def index
    @locations = Location.all
    @location = Location.new(params[:location])
    if @location.save
      flash[:notice] = "Your location has been reported"
      render('locations/index.html.erb')
    else
      render('locations/index.html.erb')
    end
  end

  def create
    @locations = Location.all
    @location = Location.new(params[:location])
    if @location.save
      flash[:notice] = "Your Bike has been reported"
      render('locations/index.html.erb')
    else
      render('locations/show.html.erb')
    end
  end

  def show
    @locations = Location.all
    @location = Location.find(params[:id])
    render('locations/show.html.erb')
  end

  def update
    @locations = Location.all
    @location = Location.find(params[:id])
    @location.update(params[:location])
    redirect_to('/')
  end
end
