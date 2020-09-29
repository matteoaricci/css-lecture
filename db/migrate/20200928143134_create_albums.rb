class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :band_id
      t.integer :release_year
      t.string :image_file
      t.timestamps
    end
  end
end
