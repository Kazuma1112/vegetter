class AddStatusToVegetables < ActiveRecord::Migration
  def change
    add_column :vegetables, :status, :integer, default:1
    add_index :vegetables, :status
  end
end
