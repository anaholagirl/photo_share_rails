class Tag < ActiveRecord::Base
  validates :photo_id, :presence => true
  validates :user_id, :presence => true
  validates_uniqueness_of :user_id
  validates_uniqueness_of :photo_id
end
