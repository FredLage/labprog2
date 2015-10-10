class Product < ActiveRecord::Base
  attr_accessible :name, :category, :price, :confection_time_in_hours, :description

  has_and_belongs_to_many :raw_materials

  validates :name, presence: true
  validates :category, presence: true
  validates :price, presence: true
  validates :confection_time_in_hours, presence: true
end
