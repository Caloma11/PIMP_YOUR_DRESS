class AdvisorsController < ApplicationController

  before_action :set_advisor, only: [:show, :edit, :update]


  def index
    if params[:city]
      @advisors = Advisor.joins(:user).where(users: {city: params[:city]})
    else
      @advisors = Advisor.all
    end
  end

  def show
  end

  def new
  end

  def create
    @advisor = Advisor.new(advisor_attributes)

  end

  def edit
  end

  def update
    current_user.build_advisor
    if current_user.update(user_params)
      redirect_to advisor_path(@advisor)
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
