require 'rails_helper'

RSpec.describe "products/edit", :type => :view do
  before(:each) do
    @product = assign(:product, FactoryGirl.create(:product))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_category[name=?]", "product[category]"

      assert_select "input#product_price[name=?]", "product[price]"

      assert_select "input#product_confection_time_in_hours[name=?]", "product[confection_time_in_hours]"

      assert_select "textarea#product_description[name=?]", "product[description]"
    end
  end
end
