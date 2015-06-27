class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :phone_number
      t.string :address
      t.string :shop_url

      t.timestamps null: false
    end
  end
end
