class OrderSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :store, :productos, :total

  def productos
    self.object.products.map do | producto|
      {
        product_id: producto.id,
        name: producto.name,
        price: producto.price
      }
    end
  end

  def store
    store =  self.object.store

    {
      store_id: store.id,
      name: store.name,
      address: store.address,
      email: store.email,
      phone: store.phone

    }
    
  end

 



end
