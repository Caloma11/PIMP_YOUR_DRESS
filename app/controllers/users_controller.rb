class UsersController < ApplicationController

  def edit
  end

  def update
    # current_user.build_advisor
    if current_user.update(user_params)
      redirect_to '/'
    else
      render :edit
    end
  end



  private

  def user_params
    params.require(:user).permit(:bio, :city, advisor_attributes: [:rate, :category, :title])
  end

end
