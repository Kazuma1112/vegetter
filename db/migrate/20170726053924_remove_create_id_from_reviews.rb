class RemoveCreateIdFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :create_id, :integer
  end
end
