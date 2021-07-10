class AddStoreIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :store_id, :integer
  end
end
