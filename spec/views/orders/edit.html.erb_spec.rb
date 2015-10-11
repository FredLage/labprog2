require 'rails_helper'

RSpec.describe "orders/edit", :type => :view do
  before(:each) do
    @order = assign(:order, FactoryGirl.create(:order))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_price[name=?]", "order[price]"

      assert_select "input#order_status[name=?]", "order[status]"

      assert_select "select#order_type_of_payment[name=?]", "order[type_of_payment]"

      assert_select "select#order_client_id[name=?]", "order[client_id]"
    end
  end
end
