# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

songs = Clementine.connection.select_all("SELECT title, album, artist, track, year FROM songs LIMIT 19")

songs.each do |song|
  artist = Artist.find_or_create_by_name(song['artist'])
  album  = artist.albums.find_or_create_by_name_and_release_date(song['album'], song['year'])
  song   = album.songs.find_or_create_by_name_and_order(song['title'], song['track'])

  #puts "#{song['title']} / #{song['album']} / #{song['artist']} / #{song['track']}"
end