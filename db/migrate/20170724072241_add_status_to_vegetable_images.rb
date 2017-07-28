class AddStatusToVegetableImages < ActiveRecord::Migration
  def change
    add_column :vegetable_images, :status, :integer, default:1
    add_index :vegetable_images, :status
  end
end
