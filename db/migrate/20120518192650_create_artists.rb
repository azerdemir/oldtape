class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.text :bio
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
