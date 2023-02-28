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


  def edit
    @planet = Planet.find(params[:id])
    authorize @planet
  end

  def update
    @planet = Planet.find(params[:id])
    @planet.update(params[:planet])
    # redirect_to planet_path(@planet)
    authorize @planet
  end

  def destroy
    @planet = Planet.find(params[:id])
    @planet.destroy
    # redirect_to planet_path, status: :see_other
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
