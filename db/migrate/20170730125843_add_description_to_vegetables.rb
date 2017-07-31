class AddDescriptionToVegetables < ActiveRecord::Migration
  def change
    add_column :vegetables, :description, :text
  end
end
