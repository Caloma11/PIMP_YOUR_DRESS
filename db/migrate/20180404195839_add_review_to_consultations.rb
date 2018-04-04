class AddReviewToConsultations < ActiveRecord::Migration[5.1]
  def change
    add_reference :consultations, :review, foreign_key: true
    add_column :consultations, :review, :text
  end
end
