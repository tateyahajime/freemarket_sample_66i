class CreateShippings < ActiveRecord::Migration[5.2]
  def change
    create_table :shippings do |t|

      t.integer :charges
      t.string :first_name
      t.string :last_name
      t.string :kana_first_name
      t.string :kana_last_name
      t.integer :zip_code
      t.string :prefectures
      t.string :city
      t.string :street
      t.string :building_name
      t.integer :phone
      t.string :area
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
