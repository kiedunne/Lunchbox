class SpotsController < ApplicationController
  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def new
  end

  def create
    @spot = Spot.new(post_params)

    @spot.save
    redirect_to @spot
  end

  private

  def post_params
    params.require(:spot).permit(:spot, :time, :location, :info)
  end
end
