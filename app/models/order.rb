class Order < ApplicationRecord
  belongs_to :food_item
  validates :quantity, presence: true, numericality: true
  validates :username, :phone_number, :address, presence: true
end
