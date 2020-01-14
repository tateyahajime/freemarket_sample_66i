class CreateZCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :z_categories do |t|

      t.string :z_category_name
      t.references :y_category, foreign_key: true
      t.timestamps
    end
  end
end
