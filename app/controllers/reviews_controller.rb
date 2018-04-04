class ReviewsController < ApplicationController


  def new
    @review = Review.new
    @consultation = Consultation.find(params[:consultation_id])
  end


  def create
    @review = Review.new(review_params)
    @review.consultation_id = params[:consultation_id]
    @consultation = Consultation.find(params[:consultation_id])
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end


end
