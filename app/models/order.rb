class Order < ActiveRecord::Base
  attr_accessible :client_name, :price, :type_of_payment, :status

  has_many :line_items
  belongs_to :client

  validates :client_name, presence: true
  validates :type_of_payment, presence: true
  validates :status, presence: true
end
