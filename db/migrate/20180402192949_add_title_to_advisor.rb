class AddTitleToAdvisor < ActiveRecord::Migration[5.1]
  def change
    add_column :advisors, :title, :string
  end
end
