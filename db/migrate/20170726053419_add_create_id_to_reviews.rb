class AddCreateIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :create_id, :integer
  end
end
