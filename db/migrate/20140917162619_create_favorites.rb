class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :photo_id
      t.integer :user_id
    end
  end
end
