class CreateConsultations < ActiveRecord::Migration[5.1]
  def change
    create_table :consultations do |t|
      t.references :user, foreign_key: true
      t.references :advisor, foreign_key: true
      t.string :start_time
      t.string :end_time
      t.integer :price
      t.string :status

      t.timestamps
    end
  end
end
