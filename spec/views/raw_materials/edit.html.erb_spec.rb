require 'rails_helper'

RSpec.describe "raw_materials/edit", :type => :view do
  before(:each) do
    @raw_material = assign(:raw_material, RawMaterial.create!(
      :name => "MyString",
      :category => "MyString",
      :price => "9.99",
      :description => "MyText"
    ))
  end

  it "renders the edit raw_material form" do
    render

    assert_select "form[action=?][method=?]", raw_material_path(@raw_material), "post" do

      assert_select "input#raw_material_name[name=?]", "raw_material[name]"

      assert_select "input#raw_material_category[name=?]", "raw_material[category]"

      assert_select "input#raw_material_price[name=?]", "raw_material[price]"

      assert_select "textarea#raw_material_description[name=?]", "raw_material[description]"
    end
  end
end
