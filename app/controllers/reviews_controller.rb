class ReviewsController < ApplicationController


  def new
    @review = Review.new
    @consultation = Consultation.find(params[:consultation_id])
  end


  def create

    @review = Review.new(rating: params[:score], content: params[:review][:content])
    @review.consultation_id = params[:consultation_id]
    @consultation = Consultation.find(params[:consultation_id])
    @review.save

    redirect_to advisor_path(@consultation.advisor_id)

  end

  private

  # def review_params
  #   params.require(:review).permit(:score, :content)
  #   raise
  # end


end
