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



  def edit
    @run = Run.find(params[:id])
  end

  def update
    @run = Run.find(params[:id])

    if @run.update(run_params)
      redirect_to run_path(@run)
    end

  end


  def destroy
    @run = Run.find(params[:id])


    if @run.destroy
      redirect_to runs_search_path
    end
  end

  private

  def run_params
    params.require(:run).permit(:name, :email, :date_time, :description, :pace, :incline, :elevation_gain, :terrain, :all_weather, :group_number, :language_spoken, :run_distance, :location, :group_type, :photo)
  end

end

