class AddCityToAdvisor < ActiveRecord::Migration[5.1]
  def change
    add_column :advisors, :city, :string
  end
end
