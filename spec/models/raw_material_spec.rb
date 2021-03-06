require 'rails_helper'

RSpec.describe RawMaterial, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:raw_material)).to be_valid
  end
  it "is invalid without a name" do
    expect(FactoryGirl.build(:raw_material, name:nil)).to_not be_valid
  end
  it "is invalid without a category" do
    expect(FactoryGirl.build(:raw_material, category:nil)).to_not be_valid
  end
  it "is invalid without a price" do
    expect(FactoryGirl.build(:raw_material, price:nil)).to_not be_valid
  end
  it "is valid without a description" do
    expect(FactoryGirl.build(:raw_material, description:nil)).to be_valid
  end
end
