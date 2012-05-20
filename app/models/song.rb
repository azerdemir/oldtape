class Song < ActiveRecord::Base
  attr_accessible :duration, :name, :order

	belongs_to :album

	has_many :mixtape_songs
	has_many :mixtapes, :through => :mixtape_songs
end
