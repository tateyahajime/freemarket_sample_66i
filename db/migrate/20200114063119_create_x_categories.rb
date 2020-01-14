class CreateXCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :x_categories do |t|

      t.string :x_category_name
      t.timestamps
    end
  end
end
