class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.string :item_code
      t.references :brand, index: true
      t.datetime :sold_on
      t.integer :sold_to
      t.datetime :returned_on
      t.text :return_reason

      t.timestamps null: false
    end
    add_foreign_key :items, :brands
  end
end
