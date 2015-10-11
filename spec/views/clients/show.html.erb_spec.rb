require 'rails_helper'

RSpec.describe "clients/show", :type => :view do
  before(:each) do
    @client = assign(:client, FactoryGirl.create(
      :client,
      :name => "Name",
      :address => "Address",
      :phone_number => "5555-5555",
      :email => "email@email.com",
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/5555-5555/)
    expect(rendered).to match(/email@email.com/)
  end
end
