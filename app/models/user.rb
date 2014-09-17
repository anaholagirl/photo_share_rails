class User < ActiveRecord::Base
  has_secure_password
  validates :email, :password, :password_confirmation, :presence => true
  validates_uniqueness_of :email

  has_many :photos, :dependent => :destroy
  has_many :tags, :dependent => :destroy
  has_many :photos, through: :tags
  has_many :photos, through: :favorites
  has_many :favorites, :dependent => :destroy
end
