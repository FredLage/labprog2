class RawMaterial < ActiveRecord::Base
  attr_accessible :name, :category, :price, :description

  has_and_belongs_to_many :products

  validates :name, presence: true
  validates :category, presence: true
  validates :price, presence: true
end
