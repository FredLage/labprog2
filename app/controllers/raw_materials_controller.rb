class RawMaterialsController < ApplicationController
  before_filter :set_raw_material, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @raw_materials = RawMaterial.all
    respond_with(@raw_materials)
  end

  def show
    respond_with(@raw_material)
  end

  def new
    @raw_material = RawMaterial.new
    respond_with(@raw_material)
  end

  def edit
  end

  def create
    @raw_material = RawMaterial.new(params[:raw_material])
    @raw_material.save
    respond_with(@raw_material)
  end

  def update
    @raw_material.update_attributes(params[:raw_material])
    respond_with(@raw_material)
  end

  def destroy
    @raw_material.destroy
    respond_with(@raw_material)
  end

  private
    def set_RawMaterial
      @raw_material = RawMaterial.find(params[:id])
    end
end
