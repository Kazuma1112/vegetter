class AddVegetableImageToFavorites < ActiveRecord::Migration
  def change
    add_reference :favorites, :vegetable_image, index: true, foreign_key: true
  end
end
