require 'rails_helper'

RSpec.describe LineItem, type: :model do
  it 'has a valid factory' do
    expect(FactoryGirl.create(:line_item)).to be_valid
  end
  it 'is invalid without a product' do
    expect(FactoryGirl.build(:line_item, product: nil)).to_not be_valid
  end
  it 'is invalid without a order' do
    expect(FactoryGirl.build(:line_item, order: nil)).to_not be_valid
  end
  it 'is invalid without a quantity' do
    expect(FactoryGirl.build(:line_item, quantity: nil)).to_not be_valid
  end
end
