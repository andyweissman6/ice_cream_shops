class CreateIceCreamShops < ActiveRecord::Migration[7.0]
  def change
    create_table :ice_cream_shops do |t|
      t.string :name
      t.boolean :open_24_hrs
      t.integer :num_employees

      t.timestamps
    end
  end
end
