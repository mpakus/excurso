class ToursController < ApplicationController

  ##
  # List of cities with more than 1 tour
  def index
    @cities = City.have_tours.alphabetical
  end

  ##
  # Full information about tour
  def show
    @tour = Tour.find(params[:id])
  end

  ##
  # List of tours filtered by city
  def city
    @city  = City.find(params[:id])
  end

  ##
  # List of tours filtered by category
  def category
    @category = Category.find(params[:id])
  end

  ##
  # Shows list of categories
  def categories
    @categories = Category
  end

end