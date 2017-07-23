class AddImage2ToVegetables < ActiveRecord::Migration
  def change
    add_column :vegetables, :image2, :text
  end
end
