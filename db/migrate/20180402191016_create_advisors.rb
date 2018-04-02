class CreateAdvisors < ActiveRecord::Migration[5.1]
  def change
    create_table :advisors do |t|
      t.integer :rate
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
