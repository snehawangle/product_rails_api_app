class Product < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :sku, presence: true
    validates :supplier_name, presence: true
    validates :color, presence: true
    validates :size, presence: true
    validates :unit, presence: true
end
