class AddTotalToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :total, :float
  end
end
