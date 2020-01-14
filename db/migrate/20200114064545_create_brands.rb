class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|

      t.string :brand_name
      t.references :item, foreign_key: true
      t.timestamps
    end
  end
end
