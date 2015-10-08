require 'rails_helper'

RSpec.describe "raw_materials/show", :type => :view do
  before(:each) do
    @raw_material = assign(:raw_material, RawMaterial.create!(
      :name => "Name",
      :category => "Category",
      :price => "9.99",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
  end
end
