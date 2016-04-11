class CreateTreeHouses < ActiveRecord::Migration
  def change
    create_table :tree_houses do |t|
      t.string :title
      t.text :description
      t.string :image
      t.integer :price

      t.timestamps null: false
    end
  end
end
