class AddImage3ToVegetables < ActiveRecord::Migration
  def change
    add_column :vegetables, :image3, :text
  end
end
