class Store < ApplicationRecord
    has_many :product_stores
    has_many :products, through: :product_stores
    has_many :orders

    validates :name, presence: true
    validates :address, presence: true
    validates :email, presence: true
    validates :phone, presence: true
end
