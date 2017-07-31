class RemoveCommentIdFromReviews < ActiveRecord::Migration
  def change
    remove_reference :reviews, :comment_id, index: true
  end
end
