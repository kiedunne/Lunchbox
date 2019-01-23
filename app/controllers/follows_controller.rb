class FollowsController < ApplicationController
  before_action :authenticate_user!

  def follow
    @spot = Spot.find(params[:id])
    current_user.follow(@spot)
    redirect_to authenticated_root_url
  end

  def unfollow
    @spot = Spot.find(params[:id])
    current_user.stop_following(@spot)
    redirect_to authenticated_root_url
  end

  def find
    @spot = Spot.find(params[:id])
  end

end
