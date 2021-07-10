class Product < ApplicationRecord
    enum type_p: { pizza: 'Pizza', complement: 'Complemento'}
    has_many :product_stores
    has_many :stores, through: :product_stores
    has_many :order_products
    has_many :order, through: :order_products

end
