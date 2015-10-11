require 'rails_helper'

RSpec.describe Client, type: :model do
  it 'has a valid factory' do
    expect(FactoryGirl.create(:client)).to be_valid
  end
  it 'is invalid without a name' do
    expect(FactoryGirl.build(:client, name: nil)).to_not be_valid
  end
  it 'is invalid without a address' do
    expect(FactoryGirl.build(:client, address: nil)).to_not be_valid
  end
  it 'is invalid without a phone_number' do
    expect(FactoryGirl.build(:client, phone_number: nil)).to_not be_valid
  end
  it 'is valid without a email' do
    expect(FactoryGirl.build(:client, email: nil)).to be_valid
  end
end
