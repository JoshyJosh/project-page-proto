class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :cat_title
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
