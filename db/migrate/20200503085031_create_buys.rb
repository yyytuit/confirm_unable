class CreateBuys < ActiveRecord::Migration[6.0]
  def change
    create_table :buys do |t|
      t.integer :coupon_id
      t.integer :amount
      t.integer :total_price

      t.timestamps
    end
  end
end
