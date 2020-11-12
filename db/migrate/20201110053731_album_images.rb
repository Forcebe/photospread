class AlbumImages < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :images, :text, :array => true, :default => []
    add_column :albums, :album_id, :integer
  end
end
