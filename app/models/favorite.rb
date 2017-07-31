class Favorite < ActiveRecord::Base
	belongs_to :user
	has_many :vegetables
	belongs_to :vegetable_image_id
	# belongs_to :vegetable_image
end
