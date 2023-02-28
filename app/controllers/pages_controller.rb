class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def dashboard
    @planets = Planet.where(user: current_user)
    @my_bookings = Booking.where(user_id: current_user.id)
    @planet_bookings = Booking.where(planet_id: @planets)
  end
end
