class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.integer :user_id
      t.text :name
      t.text :image

      t.timestamps
    end
  end
end
