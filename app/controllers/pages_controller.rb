class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end


  def search
    @runs = Run.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@runs) do |run, marker|
      marker.lat run.latitude
      marker.lng run.longitude
    end
  end
end
