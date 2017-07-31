class VegetableImage < ActiveRecord::Base
  mount_uploader :content, VegetableImageUploader
  belongs_to :vegetable
  # has_many :favorites
  # enum status:{main:0, sub:1}
end
