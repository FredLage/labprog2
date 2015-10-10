class Order < ActiveRecord::Base
  attr_accessible :client_name, :price, :status, :type_of_payment

  has_many :line_items

  validates :client_name, presence: true
  validates :status, presence: true
  validates :type_of_payment, presence: true
end
