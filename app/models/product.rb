class Product < ApplicationRecord
    enum type_p: { pizza: 'Pizza', complement: 'Complemento'}
    has_many :product_stores
    has_many :stores, through: :product_stores
end
