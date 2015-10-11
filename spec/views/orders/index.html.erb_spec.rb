require 'rails_helper'

RSpec.describe 'orders/index', type: :view do
  before(:each) do
    @client = FactoryGirl.create(:client)
    assign(:orders, FactoryGirl.create_list(:order, 2, client: @client,
                                                           type_of_payment: 'Dinheiro',
                                                           price: '9.99',
                                                           status: 'Pago'))
  end

  it 'renders a list of orders' do
    render
    assert_select 'tr>td', text: @client.name.to_s, count: 2
    assert_select 'tr>td', text: '9.99'.to_s, count: 2
    assert_select 'tr>td', text: 'Dinheiro'.to_s, count: 2
    assert_select 'tr>td', text: 'Pago'.to_s, count: 2
  end
end
