class AddVegetableIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :vegetable_id, :integer
  end
end
