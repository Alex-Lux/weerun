class RunsController < ApplicationController
  def index
    @runs = Run.all

    @runs = Run.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@runs) do |run, marker|
      marker.lat run.latitude
      marker.lng run.longitude
    end
  end
end
