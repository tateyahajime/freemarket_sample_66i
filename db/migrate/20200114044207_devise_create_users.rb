# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :nickname,null: false, default: ""
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :kana_first_name, null: false
      t.string :kana_last_name, null: false
      t.string :zip_code, null: false
      t.string :prefectures, null: false, default: 0
      t.string :city, null: false
      t.string :street, null: false
      t.string :building, null: false
      t.string :tell
      t.string :phone, null: false
      t.string :birth_year, null: false
      t.string :birth_month, null: false
      t.string :birth_day, default: ""
      t.string :number
      t.string :expiration_date_month
      t.string :expiration_date_year
      t.string :code
      
      



      
      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at



      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
  end
end
