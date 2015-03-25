class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :contact_person
      t.string :contact_email
      t.integer :contact_number
      t.string :address
      t.integer :brand_code

      t.timestamps null: false
    end
  end
end
