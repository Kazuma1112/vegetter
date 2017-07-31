class ChangeColumnToUser < ActiveRecord::Migration
 
def up
    change_column :users, :phone_number, :string, limit: 11 
      end

  #変更前の型
  def down
    change_column :users, :phone_number, :integer, limit: 4
  end
end
