class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :search]

  def home
     @home = true
  end
  def search

    @runs = Run.where.not(latitude: nil, longitude: nil)

    @runs = @runs.near(params[:search], 50) if params[:search].present?

    if  params[:run_distance].present?
      search_distance = params[:run_distance].to_i
      interval = search_distance * 0.3
      min_distance = search_distance - interval
      max_distance = search_distance + interval
      @runs = @runs.where('run_distance >= ? AND run_distance <= ?', min_distance, max_distance)
    end
    if  params[:pace].present?
      search_pace = params[:pace].to_i
      interval = search_pace * 0.1
      min_pace = search_pace - interval
      max_pace = search_pace + interval
      @runs = @runs.where('pace >= ? AND pace <= ?', min_pace, max_pace)
    end

    @hash = Gmaps4rails.build_markers(@runs) do |run, marker|
      marker.lat run.latitude
      marker.lng run.longitude
    end
  end
end
