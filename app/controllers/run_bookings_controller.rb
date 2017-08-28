class RunBookingsController < ApplicationController

  def new
    @run_booking = RunBooking.new
    @run = Run.find(params["run_id"])
  end

  def create
    @run = Run.find(params["run_id"])

    @run_booking = RunBooking.new
    @run_booking.run = @run
    @run_booking.user = current_user
    @run_booking.status = "Pending"


    if @run_booking.save!
       redirect_to run_path(@run), notice: "Your request was successfully sent"
    end
  end

  def update
    @run_booking = RunBooking.find(params[:id])
    @run_booking.update(params[:run_booking])
  end

  def show
    @run_booking = RunBooking.find(params[:run])
  end

  def destroy
    @run = Run.find(params["run_id"])

    @run_booking = RunBooking.find(params[:id])
    @run_booking.destroy

    redirect_to run_path(@run)
  end


  def approve_booking
    @run_booking = RunBooking.find(params[:id])
    @run_booking.status = "approved"
    @run_booking.save
    redirect_to run_path(@run), notice: "A booking from #{@booking.user_id} has been accepted"
  end

private

  def set_run
    @run = Run.find(params[:run_id])

  end


def run_booking_params
    params.require(:booking).permit(:run, :user, :run_id, :runner_reviews, :run_owner_reviews, :status)
  end

end
