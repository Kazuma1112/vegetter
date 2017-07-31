class RemoveUserIdFromPurhase < ActiveRecord::Migration
  def change
    remove_column :purchases, :user_id_id, :references
  end
end

