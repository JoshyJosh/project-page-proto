class AddCategoriesToProject < ActiveRecord::Migration
  def change
    add_column :projects, :categories, :text
  end
end
