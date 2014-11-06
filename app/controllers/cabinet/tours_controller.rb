class Cabinet::ToursController < Cabinet::ApplicationController
  before_action :set_tour, only: [:update]

  def index
    @tour = Tour.find_draft
  end

  def update
    if @tour.update(tour_params)
      redirect_to cabinet_tours_path, notice: 'Tour succefully updated'
    else
      redirect_to cabinet_tours_path, alert: 'Something wrong in update procedure'
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
