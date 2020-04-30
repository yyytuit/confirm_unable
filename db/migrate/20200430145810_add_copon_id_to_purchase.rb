class AddCoponIdToPurchase < ActiveRecord::Migration[6.0]
  def change
    add_column :purchases, :coupon_id, :integer
  end
end
