class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :photo_id
      t.integer :user_id
      t.integer :tuser_id
    end
  end
end
