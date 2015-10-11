require 'rails_helper'

RSpec.describe ApplicationHelper, :type => :helper do

  # Specs in this file have access to a helper object that includes
  # the ProductsHelper. For example:
  #
  # describe ProductsHelper do
  #   describe "string concat" do
  #     it "concats two strings with spaces" do
  #       expect(helper.concat_strings("this","that")).to eq("this that")
  #     end
  #   end
  # end

  # def raw_materials_names(raw_materials)
  #   names = ""
  #   raw_materials.each_with_index do |r, i|
  #     names += r.name
  #     if i != raw_materials.size - 1
  #       names += ", "
  #     end
  #   end
  #   names
  # end
  #
  # def active_for(controller_name)
  #   return "active" if controller_name == params[:controller]
  # end




  describe "#active_for" do
    it "returns nil if the actual controller is different of controller_name" do

      allow(helper).to receive_messages(params: {:controller => "products"})
      expect(helper.active_for("orders")).to eq(nil)
    end

    it "returns 'active' if the actual controller is equal of controller_name" do

      allow(helper).to receive_messages(params: {:controller => "products"})
      expect(helper.active_for("products")).to eq("active")
    end
  end

end
