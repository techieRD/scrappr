class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :condition
      t.float :price
      t.string :image
      t.integer :category_id
      t.string :street_address

      t.timestamps null: false
    end
  end
end
