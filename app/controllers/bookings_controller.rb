class BookingsController < ApplicationController
  def create
    @booking = Booking.new
    @pig = Pig.find(params[:pig_id])
    @user = current_user
    @booking.pig = @pig
    @booking.user = @user
    if @booking.save
      redirect_to pig_path(@pig)
    else
      render 'pigs/show'
    end
  end
end

