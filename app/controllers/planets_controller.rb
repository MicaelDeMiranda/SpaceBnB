class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def show
    @planet = Planet.find(params[:id])
    authorize @planet
  end

  def new
    @planet = Planet.new
    authorize @planet
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
  params.require(:planet).permit(:name, :location, :planet_photo, :user_id)
end

end
