class Order < ActiveRecord::Base
  attr_accessible :client_id, :price, :type_of_payment, :status

  has_many :line_items
  belongs_to :client

  validates :client, presence: true
  validates :type_of_payment, presence: true
  validates :status, presence: true
end
