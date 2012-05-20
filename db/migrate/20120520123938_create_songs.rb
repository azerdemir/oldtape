class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :order
      t.string :duration
      t.references :album

      t.timestamps
    end
  end
end
