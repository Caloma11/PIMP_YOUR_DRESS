class ReviewsController < ApplicationController


  def new
    @review = Review.new
  end


  def create
    @review = Review.new(review_params)
    @review.consultation_id = params[:consultation_id]
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end


end
