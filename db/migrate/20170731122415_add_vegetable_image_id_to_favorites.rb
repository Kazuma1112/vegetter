class AddVegetableImageIdToFavorites < ActiveRecord::Migration
  def change
    add_column :favorites, :vegetable_image_id, :text
  end
end
