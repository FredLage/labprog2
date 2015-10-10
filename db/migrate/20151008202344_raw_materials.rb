class RawMaterials < ActiveRecord::Migration
  def change
    create_table :raw_materials do |t|
      t.string :name
      t.string :category
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
