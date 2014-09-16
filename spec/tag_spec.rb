require 'rails_helper'
describe Tag do
  it{ should validate_presence_of :photo_id}
  it{ should validate_presence_of :user_id}
  it{ should validate_uniqueness_of :photo_id}
  it{ should validate_uniqueness_of :user_id}
end
