class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :nickname
      t.integer :general_rate
      t.integer :taste_rate
      t.integer :visual_rate
      t.integer :communication_rate
      t.integer :comment
      t.timestamps
    end
  end
end
