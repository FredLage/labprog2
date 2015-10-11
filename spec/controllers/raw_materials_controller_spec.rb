require 'rails_helper'

RSpec.describe RawMaterialsController, :type => :controller do

  let(:valid_attributes) {
    FactoryGirl.build(:raw_material).attributes.delete_if { |k, v| v.nil? }
  }

  let(:invalid_attributes) {
    FactoryGirl.build(:raw_material, name: nil).attributes.delete_if { |k, v| v.nil? }.merge(name: nil)
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all raw_materials as @raw_materials" do
      raw_material = RawMaterial.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:raw_materials)).to eq([raw_material])
    end
  end

  describe "GET #show" do
    it "assigns the requested raw_material as @raw_material" do
      raw_material = RawMaterial.create! valid_attributes
      get :show, {:id => raw_material.to_param}, valid_session
      expect(assigns(:raw_material)).to eq(raw_material)
    end
  end

  describe "GET #new" do
    it "assigns a new raw_material as @raw_material" do
      get :new, {}, valid_session
      expect(assigns(:raw_material)).to be_a_new(RawMaterial)
    end
  end

  describe "GET #edit" do
    it "assigns the requested raw_material as @raw_material" do
      raw_material = RawMaterial.create! valid_attributes
      get :edit, {:id => raw_material.to_param}, valid_session
      expect(assigns(:raw_material)).to eq(raw_material)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new RawMaterial" do
        expect {
          post :create, {:raw_material => valid_attributes}, valid_session
        }.to change(RawMaterial, :count).by(1)
      end

      it "assigns a newly created raw_material as @raw_material" do
        post :create, {:raw_material => valid_attributes}, valid_session
        expect(assigns(:raw_material)).to be_a(RawMaterial)
        expect(assigns(:raw_material)).to be_persisted
      end

      it "redirects to the created raw_material" do
        post :create, {:raw_material => valid_attributes}, valid_session
        expect(response).to redirect_to(RawMaterial.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved raw_material as @raw_material" do
        post :create, {:raw_material => invalid_attributes}, valid_session
        expect(assigns(:raw_material)).to be_a_new(RawMaterial)
      end

      it "re-renders the 'new' template" do
        post :create, {:raw_material => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { :name => "Cachecol amarelo com pompons" }
      }

      it "updates the requested raw_material" do
        raw_material = RawMaterial.create! valid_attributes
        put :update, {:id => raw_material.to_param, :raw_material => new_attributes}, valid_session
        raw_material.reload
        expect(raw_material.name).to eq(new_attributes[:name])
      end

      it "assigns the requested raw_material as @raw_material" do
        raw_material = RawMaterial.create! valid_attributes
        put :update, {:id => raw_material.to_param, :raw_material => valid_attributes}, valid_session
        expect(assigns(:raw_material)).to eq(raw_material)
      end

      it "redirects to the raw_material" do
        raw_material = RawMaterial.create! valid_attributes
        put :update, {:id => raw_material.to_param, :raw_material => valid_attributes}, valid_session
        expect(response).to redirect_to(raw_material)
      end
    end

    context "with invalid params" do
      it "assigns the raw_material as @raw_material" do
        raw_material = RawMaterial.create! valid_attributes
        put :update, {:id => raw_material.to_param, :raw_material => invalid_attributes}, valid_session
        expect(assigns(:raw_material)).to eq(raw_material)
      end

      it "re-renders the 'edit' template" do
        raw_material = RawMaterial.create! valid_attributes
        put :update, {:id => raw_material.to_param, :raw_material => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested raw_material" do
      raw_material = RawMaterial.create! valid_attributes
      expect {
        delete :destroy, {:id => raw_material.to_param}, valid_session
      }.to change(RawMaterial, :count).by(-1)
    end

    it "redirects to the raw_materials list" do
      raw_material = RawMaterial.create! valid_attributes
      delete :destroy, {:id => raw_material.to_param}, valid_session
      expect(response).to redirect_to(raw_materials_url)
    end
  end

end
