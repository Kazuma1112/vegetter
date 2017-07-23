class CreateVegetables < ActiveRecord::Migration
  def change
    create_table :vegetables do |t|
      t.text :name
      t.integer :price
      t.text :text
      t.text :image
      t.timestamps
    end
  end
end
