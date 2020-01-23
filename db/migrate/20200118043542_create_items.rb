class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.string :item_name
      t.string :price
      t.string :brand
      t.integer :size
      t.integer :condition
      t.integer :charges
      t.integer :date
      t.integer :prefectures
      t.references :category, foreign_key: true
      t.text :description
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
