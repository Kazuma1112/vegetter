class Comment < ActiveRecord::Base
  belongs_to :vegetable
  belongs_to :user
end
