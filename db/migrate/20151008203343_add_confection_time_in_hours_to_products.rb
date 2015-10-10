class AddConfectionTimeInHoursToProducts < ActiveRecord::Migration
  def change
    add_column :products, :confection_time_in_hours, :decimal
  end
end
