class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :sku
      t.string :supplier_name
      t.string :color
      t.string :size
      t.integer :unit
      t.boolean :in_stock
      t.string :type

      t.timestamps
    end
  end
end
