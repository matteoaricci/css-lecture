class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :band_id
      t.integer :release_year
      t.timestamps
    end
  end
end
