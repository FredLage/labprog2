class ClientsController < ApplicationController
  before_filter :set_client, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @clients = Client.all
    respond_with(@clients)
  end

  def show
    respond_with(@client)
  end

  def new
    @client = Client.new
    respond_with(@client)
  end

  def edit
  end

  def create
    @client = Client.new(params[:client])
    @client.save
    respond_with(@client)
  end

  def update
    @client.update_attributes(params[:client])
    respond_with(@client)
  end

  def destroy
    @client.destroy
    respond_with(@client)
  end

  private
    def set_client
      @client = Client.find(params[:id])
    end
end
