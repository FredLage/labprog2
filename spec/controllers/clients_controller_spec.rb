require 'rails_helper'


RSpec.describe ClientsController, :type => :controller do

  let(:valid_attributes) {
    FactoryGirl.build(:client).attributes.delete_if { |k, v| v.nil? }
  }

  let(:invalid_attributes) {
    FactoryGirl.build(:client, name: nil).attributes.delete_if { |k, v| v.nil? }.merge(name: nil)
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all clients as @clients" do
      client = Client.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:clients)).to eq([client])
    end
  end

  describe "GET #show" do
    it "assigns the requested client as @client" do
      client = Client.create! valid_attributes
      get :show, {:id => client.to_param}, valid_session
      expect(assigns(:client)).to eq(client)
    end
  end

  describe "GET #new" do
    it "assigns a new client as @client" do
      get :new, {}, valid_session
      expect(assigns(:client)).to be_a_new(Client)
    end
  end

  describe "GET #edit" do
    it "assigns the requested client as @client" do
      client = Client.create! valid_attributes
      get :edit, {:id => client.to_param}, valid_session
      expect(assigns(:client)).to eq(client)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Client" do
        expect {
          post :create, {:client => valid_attributes}, valid_session
        }.to change(Client, :count).by(1)
      end

      it "assigns a newly created client as @client" do
        post :create, {:client => valid_attributes}, valid_session
        expect(assigns(:client)).to be_a(Client)
        expect(assigns(:client)).to be_persisted
      end

      it "redirects to the created client" do
        post :create, {:client => valid_attributes}, valid_session
        expect(response).to redirect_to(Client.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved client as @client" do
        post :create, {:client => invalid_attributes}, valid_session
        expect(assigns(:client)).to be_a_new(Client)
      end

      it "re-renders the 'new' template" do
        post :create, {:client => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { :name => "Cachecol amarelo com pompons" }
      }

      it "updates the requested client" do
        client = Client.create! valid_attributes
        put :update, {:id => client.to_param, :client => new_attributes}, valid_session
        client.reload
        expect(client.name).to eq(new_attributes[:name])
      end

      it "assigns the requested client as @client" do
        client = Client.create! valid_attributes
        put :update, {:id => client.to_param, :client => valid_attributes}, valid_session
        expect(assigns(:client)).to eq(client)
      end

      it "redirects to the client" do
        client = Client.create! valid_attributes
        put :update, {:id => client.to_param, :client => valid_attributes}, valid_session
        expect(response).to redirect_to(client)
      end
    end

    context "with invalid params" do
      it "assigns the client as @client" do
        client = Client.create! valid_attributes
        put :update, {:id => client.to_param, :client => invalid_attributes}, valid_session
        expect(assigns(:client)).to eq(client)
      end

      it "re-renders the 'edit' template" do
        client = Client.create! valid_attributes
        put :update, {:id => client.to_param, :client => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested client" do
      client = Client.create! valid_attributes
      expect {
        delete :destroy, {:id => client.to_param}, valid_session
      }.to change(Client, :count).by(-1)
    end

    it "redirects to the clients list" do
      client = Client.create! valid_attributes
      delete :destroy, {:id => client.to_param}, valid_session
      expect(response).to redirect_to(clients_url)
    end
  end

end
