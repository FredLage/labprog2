class CreateOrders < ActiveRecord::Migration
  def up
    create_table 'orders' do |o|
      o.string :client_name
      o.text :products
      o.decimal :price
      o.string :status
      o.integer :type_of_payment
      o.timestamps
    end
  end

  def down
    drop_table 'orders'
  end
end
