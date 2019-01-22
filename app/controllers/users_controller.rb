# frozen_string_literal: true

class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @spots = @user.spots.order(created_at: :desc)
  end

  def find
    @user = User.find(params[:id])
  end
end
