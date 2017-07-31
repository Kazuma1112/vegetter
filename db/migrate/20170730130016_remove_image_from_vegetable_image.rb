class RemoveImageFromVegetableImage < ActiveRecord::Migration
  def change
    remove_column :vegetable_images, :image, :text
  end
end
