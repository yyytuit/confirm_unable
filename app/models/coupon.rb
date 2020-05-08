class Coupon < ApplicationRecord
  # has_many :purchases
  validates :name, presence: true
  validates :price, presence: true
end
