class RunsController < ApplicationController

  def index
    @runs = Run.all
  end

  def show
    @run = Run.find(params[:id])

    @hash = Gmaps4rails.build_markers(@run) do |run, marker|
      marker.lat run.latitude
      marker.lng run.longitude
    end
  end

  private

  def run_params
    params.require(:run).permit(:name, :email, :date_time, :description, :pace, :incline, :elevation_gain, :terrain, :all_weather, :group_number, :language_spoken, :distance, :location, :group_type, :photo)
  end

end

