class RemoveTextFromVegetables < ActiveRecord::Migration
  def change
    remove_column :vegetables, :text, :text
  end
end
