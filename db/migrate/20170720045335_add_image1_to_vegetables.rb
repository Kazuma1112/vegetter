class AddImage1ToVegetables < ActiveRecord::Migration
  def change
    add_column :vegetables, :image1, :text
  end
end
