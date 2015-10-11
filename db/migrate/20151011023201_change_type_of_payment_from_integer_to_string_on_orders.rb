class ChangeTypeOfPaymentFromIntegerToStringOnOrders < ActiveRecord::Migration
  def change
    change_column :orders, :type_of_payment, :string
  end
end
