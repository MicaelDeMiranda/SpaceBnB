class BookingsController < ApplicationController

  def create
    @planet = Planet.find(params[:planet_id])
    @booking = Bookin.new(booking_params)
    @booking.user = current_user
    @booking.planet = @planet
    authorize @planet

    if @planet.save
      redirect_to planet_path(@planet)
    else
      render 'planets/show', status: :unprocessable_entity
    end
  end

  def destroy

  end

  def accept
  end

  def decline
  end

  private

  def booking_params
    params.require(:booking).permit(:planet_id, :user_id, :ending_date, :starting_date, :status, :number_of_visitors)
  end

end
