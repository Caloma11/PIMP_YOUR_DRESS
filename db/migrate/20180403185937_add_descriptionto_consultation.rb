class AddDescriptiontoConsultation < ActiveRecord::Migration[5.1]
  def change
    add_column :consultations, :description, :text
  end
end
