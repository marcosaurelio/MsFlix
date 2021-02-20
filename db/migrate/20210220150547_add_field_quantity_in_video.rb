class AddFieldQuantityInVideo < ActiveRecord::Migration[6.0]
  def change
    add_column :videos, :quantity, :integer, default: 0
  end
end
