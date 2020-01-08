class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :brands_name
      t.references :items_id
      t.timestamps
    end
  end
end
