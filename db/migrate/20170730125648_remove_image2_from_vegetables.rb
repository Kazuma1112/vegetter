class RemoveImage2FromVegetables < ActiveRecord::Migration
  def change
    remove_column :vegetables, :image2, :text
  end
end
