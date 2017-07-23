class RemoveImage4FromVegetables < ActiveRecord::Migration
  def change
    remove_column :vegetables, :image4, :text
  end
end
