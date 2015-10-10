class CreateProductsAndRawMaterials < ActiveRecord::Migration
  def change
    create_table :products_raw_materials, id: false do |t|
      t.belongs_to :product, index: true
      t.belongs_to :raw_material, index: true
    end
  end
end
