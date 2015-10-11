require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'has a valid factory' do
    expect(FactoryGirl.create(:product)).to be_valid
  end
  it 'is invalid without a name' do
    expect(FactoryGirl.build(:product, name: nil)).to_not be_valid
  end
  it 'is invalid without a category' do
    expect(FactoryGirl.build(:product, category: nil)).to_not be_valid
  end
  it 'is invalid without a price' do
    expect(FactoryGirl.build(:product, price: nil)).to_not be_valid
  end
  it 'is invalid without a confection_time_in_hours' do
    expect(FactoryGirl.build(:product, confection_time_in_hours: nil)).to_not be_valid
  end
  it 'is invalid without a confection_time_in_hours' do
    expect(FactoryGirl.build(:product, raw_materials: [])).to_not be_valid
  end
  it 'is valid without a description' do
    expect(FactoryGirl.build(:product, description: nil)).to be_valid
  end
end
