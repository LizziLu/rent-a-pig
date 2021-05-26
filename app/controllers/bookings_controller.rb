class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @user = current_user
    @pig = Pig.find(params[:pig_id])
    @booking.pig = @pig
    @booking.user = @user
    @booking.save
    redirect_to pigs_path

  end

  private
  def booking_params
    params.require(:booking).permit(:booking_date)

  end
end

