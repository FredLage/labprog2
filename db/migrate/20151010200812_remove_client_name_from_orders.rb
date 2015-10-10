class RemoveClientNameFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :client_name
  end
end
