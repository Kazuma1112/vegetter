class CreateVegetableImages < ActiveRecord::Migration
  def change
    create_table :vegetable_images do |t|
      t.string :image
      t.integer :vegetable_id
      t.timestamps
    end
  end
end
