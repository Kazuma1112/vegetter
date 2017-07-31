class Review < ActiveRecord::Base
  belongs_to :vegetable
  belongs_to :user
  belongs_to :comment
end
