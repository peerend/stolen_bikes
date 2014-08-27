class LocationsController < ApplicationController

  def index
    @locations = Location.all
    render('locations/index.html.erb')
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
    @bike = @location.bikes.new(params[:bike])
    if @bike.save
      flash[:notice] = "Your Bike has been reported"
      redirect_to("/")
    else
      render('locations/show.html.erb')
    end
  end

  def update
    @locations = Location.all
    @location = Location.find(params[:id])
    @location.update(params[:location])
    redirect_to('/')
  end
end