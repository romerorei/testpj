class StoreSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :email, :phone, :created_at, :updated_at, :orders

  def orders
      self.object.orders.map do |order|
      {
        order_id: order.id,
        created_at: order.created_at,
        total: order.total,
        products: order.products
        
        
      }
    end
  end

  
end
