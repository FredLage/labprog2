require 'rails_helper'

RSpec.describe ProductsHelper, :type => :helper do
  describe "#raw_materials_names" do
    it "returns a empty string if raw_materials is empty" do
      expect(helper.raw_materials_names([])).to eq('')
    end

    it "returns the RawMaterials names separeted by comma" do
      raw_materials = FactoryGirl.create_list(:raw_material, 3, name: "name")
      expect(helper.raw_materials_names(raw_materials)).to eq('name, name, name')
    end
  end

end
