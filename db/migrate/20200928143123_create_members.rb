class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name
      t.integer :band_id
      t.string :image_file
      t.timestamps
    end
  end
end
