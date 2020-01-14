class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.string :item_name
      t.string :price
      t.string :brand
      t.float :size
      t.string :condition
      t.references :x_category, foreign_key: true
      t.references :y_category, foreign_key: true
      t.references :z_category, foreign_key: true
      t.text :description
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
