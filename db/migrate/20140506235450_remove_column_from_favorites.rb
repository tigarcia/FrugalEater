class RemoveColumnFromFavorites < ActiveRecord::Migration
  def change
    remove_column :favorites, :AddRegionToFavorites, :string
  end
end