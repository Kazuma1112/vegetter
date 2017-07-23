class AddImage4ToVegetables < ActiveRecord::Migration
  def change
    add_column :vegetables, :Image4, :text
  end
end
