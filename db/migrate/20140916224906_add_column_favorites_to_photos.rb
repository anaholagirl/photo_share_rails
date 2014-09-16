class AddColumnFavoritesToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :favorite, :boolean, :default => false
  end
end
