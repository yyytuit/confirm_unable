class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.integer :amount
      t.integer :total_price

      t.timestamps
    end
  end
end
