class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :advisors, :rate, :price
  end
end
