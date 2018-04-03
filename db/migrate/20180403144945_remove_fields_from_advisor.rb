class RemoveFieldsFromAdvisor < ActiveRecord::Migration[5.1]
  def change
    remove_column :advisors, :bio
    remove_column :advisors, :city
  end
end
