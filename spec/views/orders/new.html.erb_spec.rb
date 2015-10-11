require 'rails_helper'

RSpec.describe 'orders/new', type: :view do
  before(:each) do
    assign(:order, FactoryGirl.build(:order))
  end

  it 'renders new order form' do
    render

    assert_select 'form[action=?][method=?]', orders_path, 'post' do
      assert_select 'input#order_status[name=?]', 'order[status]'

      assert_select 'select#order_type_of_payment[name=?]', 'order[type_of_payment]'

      assert_select 'input#order_price[name=?]', 'order[price]'

      assert_select 'select#order_client_id[name=?]', 'order[client_id]'
    end
  end
end
