class RunBookingsController < ApplicationController

  def new
    @run_booking = RunBooking.new
    @run = Run.all.find(params["run_id"])
  end

  def create
    @run_booking = RunBooking.new
    @run_booking.user = current_user
    @run_booking.status = "Pending"

    @run = Run.all.find(params["run_id"])
    @run_booking.run = @run


    if @run_booking.save
      redirect_to run_path(@run)
    end
  end



end
