class PlanetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new]

  def index
    # @planets = policy_scope(Planet)
    if params[:query].present?
      @planets = Planet.search_by_name_and_description(params[:query])
    else
      @planets = Planet.all
    end
  end

  def show
    @planet = Planet.find(params[:id])
    @booking = Booking.new
    @review = Review.new
    authorize @planet
    authorize @review
  end

  def new
    @planet = Planet.new
    authorize @planet
  end

  def edit
    @planet = Planet.find(params[:id])
    authorize @planet
  end

  def update
    @planet = Planet.find(params[:id])
    authorize @planet
    @planet.update(planet_params)
    redirect_to planet_path(@planet)
  end

  def destroy
    @planet = Planet.find(params[:id])
    authorize @planet
    @planet.destroy

    redirect_to root_path, status: :see_other
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.user = current_user
    authorize @planet

    if @planet.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :location, :photo, :price_per_night, :user_id, :capacity, :description)
  end
end
