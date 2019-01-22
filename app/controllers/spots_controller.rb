class SpotsController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(merge_params)

    if(@spot.save)
      redirect_to @spot
    else
      render 'new'
    end
  end

  def edit
    @spot = Spot.find(params[:id])
  end

  def update
    @spot = Spot.find(params[:id])

    if(@spot.update(post_params))
      redirect_to @spot
    else
      render 'edit'
    end
  end

  def destroy
    @spot = Spot.find(params[:id])
    @spot.destroy

    redirect_to spots_path
  end

  def post_params
    params.require(:spot).permit(:spot, :time, :location, :info, :user_id, :username)
  end

  def merge_params
    post_params.merge(user_id: current_user.id, username: current_user.username)
  end
end
