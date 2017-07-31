class RemoveImage3FromVegetables < ActiveRecord::Migration
  def change
    remove_column :vegetables, :image3, :text
  end
end
