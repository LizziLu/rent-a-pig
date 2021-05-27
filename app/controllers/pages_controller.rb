class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard

    @offered_pigs = Pig.where(user: current_user)
    @bookings = current_user.bookings
  end
end
