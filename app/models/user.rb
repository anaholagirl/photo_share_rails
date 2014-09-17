class User < ActiveRecord::Base
  has_secure_password
  validates :email, :password, :password_confirmation, :presence => true
  validates_uniqueness_of :email

  has_many :photos, :dependent => :destroy
  has_many :tags, :dependent => :destroy
  has_many :tagged_photos, through: :tags, source: :photo
  has_many :favorited_photos, through: :favorites, source: :photo
  has_many :favorites, :dependent => :destroy
end
