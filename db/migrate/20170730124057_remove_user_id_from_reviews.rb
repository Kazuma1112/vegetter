class RemoveUserIdFromReviews < ActiveRecord::Migration
  def change
    remove_reference :reviews, :user_id, index: true
  end
end
