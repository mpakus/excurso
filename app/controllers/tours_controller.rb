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
    trace_last
    find_traces
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

  protected
    def trace_last
      @trace ||= Trace.new(cookies, 3)
      @trace.add(@tour.id)
    end

    def find_traces
      traces = @trace.values
      traces.delete(@tour.id)
      @traced_tours = Tour.where(id: traces)
    end
end