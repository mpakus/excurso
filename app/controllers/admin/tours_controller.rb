class Admin::ToursController < Admin::ApplicationController
  before_action :set_tour, only: [:show, :edit, :update, :destroy]

  def index
    @tours = Tour.includes(:city).newest.page(params[:page])
  end

  def show;end

  def new
    @tour = Tour.new
  end

  def edit
  end

  def create
    @tour = Tour.new(tour_params)
    if @tour.save
      redirect_to admin_tours_path, notice: 'Tour succefully added'
    else
      redirect_to admin_tours_path, alert: 'Something wrong in add procedure'
    end
  end

  def update
    if @tour.update(tour_params)
      redirect_to admin_tours_path, notice: 'Tour succefully updated'
    else
      redirect_to admin_tours_path, alert: 'Something wrong in update procedure'
    end
  end

  def destroy
    if @tour.destroy
      redirect_to admin_tours_path, notice: 'Tour deleted'
    else
      redirect_to admin_tours_path, alert: 'Something wrong in delete procedure'
    end
  end

  private
    def set_tour
      @tour = Tour.find(params[:id])
    end

    def tour_params
      params.require(:tour).permit(:name, :description, :city_id)
    end
end
