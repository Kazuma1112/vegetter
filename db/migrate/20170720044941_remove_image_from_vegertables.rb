class RemoveImageFromVegertables < ActiveRecord::Migration
  def change
    remove_column :vegetables, :image, :text
  end
end
