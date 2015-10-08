require 'rails_helper'

RSpec.describe "raw_materials/index", :type => :view do
  before(:each) do
    assign(:raw_materials, [
      RawMaterial.create!(
        :name => "Name",
        :category => "Category",
        :price => "9.99",
        :description => "MyText"
      ),
      RawMaterial.create!(
        :name => "Name",
        :category => "Category",
        :price => "9.99",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of raw materials" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
