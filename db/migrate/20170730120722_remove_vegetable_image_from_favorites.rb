class RemoveVegetableImageFromFavorites < ActiveRecord::Migration
  def change
    remove_column :favorites, :vegetable_image, :text
  end
end
