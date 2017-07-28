class AddFavoritesToVegetables < ActiveRecord::Migration
  def change
    add_column :vegetables, :favorites, :integer
  end
end
