require 'rails_helper'

RSpec.describe 'clients/index', type: :view do
  before(:each) do
    assign(:clients, FactoryGirl.create_list(:client, 2, name: 'Name',
                                                           address: 'Address',
                                                           phone_number: '5555-5555',
                                                           email: 'email@email.com'))
  end

  it 'renders a list of clients' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Address'.to_s, count: 2
    assert_select 'tr>td', text: '5555-5555'.to_s, count: 2
    assert_select 'tr>td', text: 'email@email.com'.to_s, count: 2
  end
end
