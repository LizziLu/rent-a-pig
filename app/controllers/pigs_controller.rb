class PigsController < ApplicationController
  def index
    @pigs = Pig.all
    @markers = @pigs.geocoded.map do |pig|
      {
        lat: pig.latitude,
        lng: pig.longitude,
        info_window: render_to_string(partial: "info_window", locals: { pig: pig }),
        image_url: helpers.asset_url('pigmarker.png')
      }
    end
  end

  def show
    @booking = Booking.new
    @pig = Pig.find(params[:id])
  end

  def new
    @pig = Pig.new
  end

  def create
    @pig = Pig.new(pig_params)
    @pig.user = current_user
    if @pig.save
      redirect_to pigs_path
    else
      render :new
    end
  end

  def dashboard
    @user = current_user
    @offered_pigs = Pig.where(user: @user)
    @pigs = Pig.all
    #@bookings = Pig.where(bookings belong to current user )


  end

  private

  def pig_params
    params.require(:pig).permit(:name, :weight, :age, :profession, :bio, :photo, :price)
  end
end
