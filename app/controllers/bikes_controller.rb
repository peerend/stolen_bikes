class BikesController < ApplicationController
  def index
    @locations = Location.uniq
    @bikes = Bike.all
    render('bikes/index.html.erb')
  end

  def edit
    @bikes = Bike.all
    @bike = Bike.find(params[:id])
    @locations = Location.all
    render('/bikes/edit.html.erb')
  end


  def create
    @bikes = Bike.all
    @bike = Bike.new(params[:bike])
    @locations = Location.all
    if @bike.save
      flash[:notice] = "Your Bike has been reported"
      redirect_to("/")
    else
      render('/bikes/new.html.erb')
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
    @locations = Location.all
    if @bike.update(params[:bike])
      flash[:notice] = "Your Report has been updated"
      redirect_to("/")
    else
      render('bikes/edit.html.erb')
    end
  end

  def destroy
    @locations = Location.all
    @bikes = Bike.all
    @bike = Bike.find(params[:id])
    @bike.destroy
    redirect_to('/')
  end

  def new
    @bikes = Bike.all
    @bike = Bike.new
    @locations = Location.all
    @location = Location.find(params[:id])
    render('bikes/new.html.erb')
  end

end
