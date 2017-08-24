class RunsController < ApplicationController
  def index
  end

  def show
    @run = Run.find(params[:id])
  end

end
