class SpotsController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
    @spots = Spot.all.order('spots.datestring ASC', 'spots.time_start ASC')
    @follows = Follow.all.order('follows.created_at DESC')
    @users = User.all
  end

  def show
    @spot = Spot.find(params[:id])
    @follows = Follow.all.order('follows.created_at DESC')
    @user = User.find(@spot.user_id)
    @users = User.all
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(merge_params)

    if @spot.save
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

    if @spot.update(post_params)
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

private

  def post_params
    params.require(:spot).permit(:spot, :time, :location, :info, :user_id, :username, :avatar, :time_start, :time_end, :date, :datestring, :diet)
  end

  def merge_params
    post_params.merge(user_id: current_user.id, username: current_user.username, avatar: current_user.avatar, diet: current_user.diet)
  end
end
