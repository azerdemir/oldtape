class CreateMixtapeSongs < ActiveRecord::Migration
  def change
    create_table :mixtape_songs do |t|
      t.references :mixtape
      t.references :song
      t.integer :order

      t.timestamps
    end
  end
end
