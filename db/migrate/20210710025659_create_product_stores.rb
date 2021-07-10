class CreateProductStores < ActiveRecord::Migration[5.2]
  def change
    create_table :product_stores do |t|
      t.integer :product_id
      t.integer :store_id

      t.timestamps
    end

    add_index :product_stores, [:product_id, :store_id]
  end
end
