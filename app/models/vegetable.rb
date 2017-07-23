class Vegetable < ActiveRecord::Base
  mount_uploader :image1 ImageUploader
  mount_uploader :image2 ImageUploader
  mount_uploader :image3 ImageUploader
 belongs_to :user
end
