require 'rails_helper'

RSpec.describe "orders/show", :type => :view do
  before(:each) do
    @client = FactoryGirl.create(:client, name: "Name")
    assign(:order, FactoryGirl.create(:order, client: @client,
                                                           type_of_payment: 'Dinheiro',
                                                           price: '9.99',
                                                           status: 'Pago'))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Dinheiro/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Pago/)
  end
end
