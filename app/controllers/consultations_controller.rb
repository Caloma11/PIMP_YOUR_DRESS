class ConsultationsController < ApplicationController




  def index
    if current_user.advisor.present?
      @consultations = current_user.advisor.consultations
    else
      @consultations = current_user.consultations
    end
  end

  def new
    @consultation = Consultation.new
  end

  def create
    @consultation = Consultation.new(consultation_params)
    @consultation.user_id = current_user.id
    @consultation.advisor_id = params[:advisor_id]
  end

  private

  def consultation_params
    params.require(:consultation).permit(:start_time, :end_time)
  end

end