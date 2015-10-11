require 'rails_helper'

RSpec.describe 'products/index', type: :view do
  before(:each) do
    assign(:products, FactoryGirl.create_list(:product, 2, name: 'Name',
                                                           category: 'Category',
                                                           price: '9.99',
                                                           confection_time_in_hours: '2.5'))
  end

  it 'renders a list of products' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Category'.to_s, count: 2
    assert_select 'tr>td', text: '9.99'.to_s, count: 2
    assert_select 'tr>td', text: '2.5'.to_s, count: 2
  end
end
