require "rails_helper"

RSpec.describe RawMaterialsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/raw_materials").to route_to("raw_materials#index")
    end

    it "routes to #new" do
      expect(:get => "/raw_materials/new").to route_to("raw_materials#new")
    end

    it "routes to #show" do
      expect(:get => "/raw_materials/1").to route_to("raw_materials#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/raw_materials/1/edit").to route_to("raw_materials#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/raw_materials").to route_to("raw_materials#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/raw_materials/1").to route_to("raw_materials#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/raw_materials/1").to route_to("raw_materials#destroy", :id => "1")
    end

  end
end
