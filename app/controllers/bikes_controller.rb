class BikesController < ApplicationController
  def index
    @locations = Location.all
    @bikes = Bike.all
    render('bikes/index.html.erb')
  end

  def create
    @bikes = Bike.all
    @location = Location.find(params[:id])
    @bike = @location.bikes.new(params[:bike])
    if @bike.save
      flash[:notice] = "Your Bike has been reported"
      redirect_to("/")
    else
      render('/bikes/index.html.erb')
    end
  end

  def show
    @bikes = Bike.all
    @bike = Bike.find(params[:id])
    render('bikes/show.html.erb')
  end

  def update
    @bikes = Bike.all
    @bike = Bike.find(params[:id])
    if @bike.update(params[:bike])
      flash[:notice] = "Your Report has been updated"
      redirect_to("/")
    else
      render('bikes/index.html.erb')
    end
  end

  def destroy
    @locations = Location.all
    @bikes = Bike.all
    @bike = Bike.find(params[:id])
    @bike.destroy
    redirect_to('/')
  end

end