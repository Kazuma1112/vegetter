class AddVegetableToPurchase < ActiveRecord::Migration
  def change
    add_reference :purchases, :vegetable, index: true, foreign_key: true
  end
end
