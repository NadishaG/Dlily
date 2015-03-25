class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :order_id
      t.string :cover_photo
      # t.file :picture

      t.timestamps null: false
    end
  end
end
