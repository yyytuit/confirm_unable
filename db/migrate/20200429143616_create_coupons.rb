class CreateCoupons < ActiveRecord::Migration[6.0]
  def change
    create_table :coupons do |t|
      t.string :name, null: false
      t.string :price, null: false

      t.timestamps
    end
  end
end
