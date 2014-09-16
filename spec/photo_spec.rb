require 'rails_helper'
describe Photo do
  it{ should validate_presence_of :user_id}
  it{ should validate_presence_of :name}
  it{ should belong_to :user}

  it{ should have_many :tags}
  it{ should have_many :users}
end
