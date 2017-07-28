class Vegetable < ActiveRecord::Base
 belongs_to :user
 has_many :vegetable_images
 has_many :reviews
 has_many :favorites
 has_many :comments
 accepts_nested_attributes_for :vegetable_images
end
