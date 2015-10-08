class RawMaterial < ActiveRecord::Base
  attr_accessible :name, :category, :price, :description
  validates :name, presence: true
  validates :category, presence: true
  validates :price, presence: true
end
