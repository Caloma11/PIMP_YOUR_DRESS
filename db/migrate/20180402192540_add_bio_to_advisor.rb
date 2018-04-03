class AddBioToAdvisor < ActiveRecord::Migration[5.1]
  def change
    add_column :advisors, :bio, :text
  end
end
