class BikesController < ApplicationController
  def index
    @bikes = Bike.all
    render('bikes/index.html.erb')
  end

  def create
    @bikes = Bike.all
    @location = Location.find(params[:id])
    @bike = @location.bikes.new(params[:bike])
    @bike.save
    redirect_to("/")
  end

  def show
    @bikes = Bike.all
    @bike = Bike.find(params[:id])
    render('bikes/show.html.erb')
  end
end