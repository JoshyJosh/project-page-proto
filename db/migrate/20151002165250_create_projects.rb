class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.date :publish_date

      t.timestamps null: false
    end
  end
end
