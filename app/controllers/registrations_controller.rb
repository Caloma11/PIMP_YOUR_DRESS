class RegistrationsController < Devise::RegistrationsController

  def after_sign_up_path_for(resource)
    if resource.user_type == "Customer"
      edit_user_path(resource.id)
    elsif resource.user_type == "Advisor"
      new_advisor_path
    end
  end



    def after_sign_in_path_for(resource)
      if resource.advisor
      consultations_path
      else
      advisors_path
      end
    end

end
