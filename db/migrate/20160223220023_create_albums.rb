class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.references :artist, index: true, foreign_key: true
      t.string :image_ul
      t.date :released_at

      t.timestamps null: false
    end
  end
end
