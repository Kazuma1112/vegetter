class RemoveContentFromVegetables < ActiveRecord::Migration
  def change
    remove_column :vegetables, :content, :text
  end
end
