class CreateFlavors < ActiveRecord::Migration[7.0]
  def change
    create_table :flavors do |t|
      t.string :flavor_name
      t.boolean :vegan
      t.integer :grams_sugar
      t.references :ice_cream_shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
