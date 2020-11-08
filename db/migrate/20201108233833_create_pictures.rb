class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.text :user_id
      t.text :album_id
      t.text :url

      t.timestamps
    end
  end
end
