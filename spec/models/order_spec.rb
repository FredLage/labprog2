require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'has a valid factory' do
    expect(FactoryGirl.create(:order)).to be_valid
  end
  it 'is invalid without a client' do
    expect(FactoryGirl.build(:order, client: nil)).to_not be_valid
  end
  it 'is invalid without a type_of_payment' do
    expect(FactoryGirl.build(:order, type_of_payment: nil)).to_not be_valid
  end
  it 'is invalid without a status' do
    expect(FactoryGirl.build(:order, status: nil)).to_not be_valid
  end
  it 'is valid without a price' do
    expect(FactoryGirl.build(:order, price: nil)).to be_valid
  end
end
