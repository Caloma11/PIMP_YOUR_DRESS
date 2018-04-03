class AdvisorsController < ApplicationController

  before_action :set_advisor, only: [:show, :edit, :update]


  def index
    @advisors = Advisor.all
  end

  def show
  end

  def new

    current_user.build_advisor
  end

  def create
    @advisor = Advisor.new(advisor_attributes)

  end

  def edit
  end

  def update
    byebug
    current_user.build_advisor
    if current_user.update(user_params)
      redirect_to '/'
    else
      render :edit
    end
  end


  private

  def set_advisor
      @advisor = Advisor.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:bio, :city, advisor_attributes: [:rate, :category, :title])
  end



end
