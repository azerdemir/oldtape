class MixtapeSong < ActiveRecord::Base
  attr_accessible :mixtape_id, :order, :song_id

  belongs_to :mixtape
  belongs_to :song
end
