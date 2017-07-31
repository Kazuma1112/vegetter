class RemoveFavoriteFromVegetables < ActiveRecord::Migration
  def change
    remove_column :vegetables, :favorites, :integer
  end
end
