class DropColumnFavorites < ActiveRecord::Migration
  def change
    remove_column :photos, :favorite, :boolean
  end
end
