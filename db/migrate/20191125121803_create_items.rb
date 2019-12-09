class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      t.string :name, null: false, index: true
      t.text :image, null: false
      t.integer :price, null: false
      t.string :ship_way, null: false, default: 0
      t.string :ship_price, null: false, default: 0
      t.string :ship_date, null: false, default: 0
      t.string :condition, null: false, default: 0
      t.integer :buyer
      t.integer :saler, null: false
      t.text :description, null: false
      t.string :ship_place, null: false
      t.timestamps
    end
  end
end
