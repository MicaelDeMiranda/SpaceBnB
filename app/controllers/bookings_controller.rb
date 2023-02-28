class BookingsController < ApplicationController

  def create
    @planet = Planet.find(params[:planet_id])
    @booking = Booking.new(booking_params)
    @booking.planet = @planet
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render 'planets/show', status: :unprocessable_entity
    end
    authorize @booking
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @planet
    @booking.destroy
    redirect_to dashboard_path
  end

  def accept
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "Réservation confirmée"
    @booking.save
    redirect_to dashboard_path
  end

  def decline
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "Réservation refusée"
    @booking.save
    redirect_to dashboard_path
    #rajouter une ancre pour venir au meme endroit
  end

  private

  def booking_params
    params.require(:booking).permit(:planet_id, :user_id, :ending_date, :starting_date, :status, :number_of_visitors)
  end

end
