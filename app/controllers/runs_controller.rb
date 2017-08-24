class RunsController < ApplicationController
  def index
  end

  def show  # GET /runs/:id
    @run = Run.find(params[:id])
  end

end
