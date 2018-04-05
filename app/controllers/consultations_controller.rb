class ConsultationsController < ApplicationController




  def index
    if current_user.advisor.present?
      @consultations = current_user.advisor.consultations
    else
      @consultations = current_user.consultations
    end
  end

  def new
    @advisor = Advisor.find(params[:advisor_id])
    # @consultation.advisor_id = params[:advisor_id]
    @consultation = Consultation.new
  end

  def create
    @consultation = Consultation.new(consultation_params)
    @consultation.user_id = current_user.id
    @consultation.advisor_id = params[:advisor_id]
    if @consultation.save!
      redirect_to consultations_path
    else
      render 'new'
    end
  end

<<<<<<< HEAD
=======
  def accept
    @consultation = Consultation.find(params[:id])
    @consultation.status = "Accepted"
    @consultation.save!
    redirect_to consultations_path
  end

  def reject
    @consultation = Consultation.find(params[:id])
    @consultation.status = "Rejected"
    @consultation.save!
    redirect_to consultations_path

  end
>>>>>>> 19dd1bd017abc8bf77d932e73016170dfc42ce02

  private

  def consultation_params
    params.require(:consultation).permit(:start_time, :end_time, :description)
  end

end
