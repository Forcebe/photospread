class AlbumImages < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :images, :text, :array => true, :default => []
  end
end
