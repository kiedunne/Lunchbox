# frozen_string_literal: true

class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @spots = @user.spots.order(datestring: :asc, created_at: :desc)
    @users = User.all
    @allspots = Spot.all
  end

end
