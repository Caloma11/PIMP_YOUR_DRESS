class AddDefaultToConsultationStatus < ActiveRecord::Migration[5.1]




  def change
    change_column_default :consultations, :status, "Pending"
  end


end
