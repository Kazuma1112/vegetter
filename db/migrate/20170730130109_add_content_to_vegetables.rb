class AddContentToVegetables < ActiveRecord::Migration
  def change
    add_column :vegetables, :content, :text
  end
end
