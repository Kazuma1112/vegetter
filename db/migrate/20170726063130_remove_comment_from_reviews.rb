class RemoveCommentFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :comment, :integer
  end
end
