class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def dashboard
    @planets = Planet.where(user: current_user)
    @bookings = Booking.where(user_id: current_user.id)
  end
end
