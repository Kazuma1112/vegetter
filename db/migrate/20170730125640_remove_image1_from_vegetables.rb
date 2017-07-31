class RemoveImage1FromVegetables < ActiveRecord::Migration
  def change
    remove_column :vegetables, :image1, :text
  end
end
