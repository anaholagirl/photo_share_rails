class RemoveTuserColumn < ActiveRecord::Migration
  def change
    remove_column :tags, :tuser_id, :integer
  end
end
