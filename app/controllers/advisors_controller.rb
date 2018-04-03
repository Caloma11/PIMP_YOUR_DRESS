class AdvisorsController < ApplicationController

  before_action :set_advisor, only: [:show, :edit, :update]


  def index
    @advisors = Advisor.all
  end

  def show
  end

  def new
    @advisor = Advisor.new
  end

  def create
    @advisor = Advisor.new(advisor_params)

  end

  def edit
  end

  def update
    if @advisor.update(advisor_params)
      redirect_to :show
    else
      render :edit
    end
  end


  private

  def set_advisor
      @advisor = Advisor.find(params[:id])
  end

  def advisor_params
    params.require(:advisor).permit(:first_name, :last_name, :email, :bio, :city)
  end



end
