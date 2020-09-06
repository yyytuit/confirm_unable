class Purchase < ApplicationRecord
  # belongs_to :coupon
  validates :coupon_id, presence: true
  validates :amount, presence: true
  validates :total_price, presence: true
end
