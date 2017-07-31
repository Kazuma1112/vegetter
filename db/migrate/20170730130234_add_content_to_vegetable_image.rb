class AddContentToVegetableImage < ActiveRecord::Migration
  def change
    add_column :vegetable_images, :content, :text
  end
end
