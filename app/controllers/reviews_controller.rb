class ReviewsController < ApplicationController
  def new
    @planet = Planet.find(params[:planet_id])
    @review = Review.new
    authorize @planet
  end

  def create
    @planet = Planet.find(params[:planet_id])
    @review = Review.new(review_params)
    @review.planet = @planet
    @review.user = current_user
    @review.save
    redirect_to root_path
    authorize @review
  end



  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    authorize @review
    redirect_to review_path(@review.planet), status: :see_other
  end


  private

  def set_planet
    @planet = Planet.find(params[:planet_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
