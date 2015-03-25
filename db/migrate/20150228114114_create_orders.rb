class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :brand, index: true
      t.datetime :ordered_on
      t.datetime :delivered_on
      t.integer :order_size
      t.integer :order_price
      t.text :item_description
      t.string :color_code

      t.timestamps null: false
    end
    add_foreign_key :orders, :brands
  end
end
