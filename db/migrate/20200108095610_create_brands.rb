class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :brands_name
      t.references :items foreign_key: true
      t.timestamps
    end
  end
end
