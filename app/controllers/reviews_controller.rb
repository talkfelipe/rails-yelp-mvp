class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:show, :new, :create]

  def new
  end

  def create
  end

  private

  def set_restaurant
    @restaurants = Restaurant.find(params[:restaurant_id])
  end
end
