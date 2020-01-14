class CreatePays < ActiveRecord::Migration[5.2]
  def change
    create_table :pays do |t|

      t.integer :card_number
      t.date :expiration_date_month
      t.date :expiration_date_year
      t.integer :security_code
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
