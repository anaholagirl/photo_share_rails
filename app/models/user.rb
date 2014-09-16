class User < ActiveRecord::Base
  has_secure_password
  validates :email, :password, :password_confirmation, :presence => true
  validates_uniqueness_of :email

  has_many :photos
  has_many :tags
  has_many :photos, through: :tags
end
