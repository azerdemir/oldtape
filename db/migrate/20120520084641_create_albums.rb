class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
			t.string :name
		  t.text :info
			t.date :release_date
			t.references :artist

      t.timestamps
    end
	  add_index :albums, :artist_id
  end
end
