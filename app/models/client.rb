class Client < ActiveRecord::Base
  attr_accessible :name, :address, :phone_number, :email

  has_many :orders

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
end
