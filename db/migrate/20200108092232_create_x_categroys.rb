class CreateXCategroys < ActiveRecord::Migration[5.2]
  def change
    create_table :x_categroys do |t|
      t.string :z_category_name
      t.timestamps
    end
  end
end
