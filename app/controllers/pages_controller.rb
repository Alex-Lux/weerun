class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :search]

  def home
  end


  def search
    @runs = Run.all
    # For the next line to work you need to change distance collumn on the run to another name
    #@runs = Run.near(params[:search], 100)

    @hash = Gmaps4rails.build_markers(@runs) do |run, marker|
      marker.lat run.latitude
      marker.lng run.longitude
    end
  end
end
