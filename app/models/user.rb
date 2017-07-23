class User < ActiveRecord::Base
  # validates :nickname, :phone, :email, :password, presence: true
  validates :nickname, :phone, presence: true
  has_many :vegetables, dependent: :destroy


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar,styles:
  { medium: "300x300#", thumb: "100x100#" }
  validates_attachment_content_type :avatar,
  content_type: ["image/jpg","image/jpeg","image/png"]

end
