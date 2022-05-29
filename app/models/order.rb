class Order < ApplicationRecord
  belongs_to :customer

  validates :product_name, :product_count, :customer, presence: true
  validates :product_count, numericality: { only_integer: true, greater_than: 0 }
  validates_associated :customer
end
