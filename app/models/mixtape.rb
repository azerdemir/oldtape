class Mixtape < ActiveRecord::Base
  attr_accessible :description, :image, :name

  has_many :mixtape_songs
  has_many :songs, :through => :mixtape_songs
end
