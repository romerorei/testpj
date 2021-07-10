class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.string :type_p
      t.integer :price

      t.timestamps
    end
  end
end
