class CreateYCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :y_categories do |t|

      t.string :y_category_name
      t.references :x_category, foreign_key: true

      t.timestamps
    end
  end
end
