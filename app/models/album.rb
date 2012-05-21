class Album < ActiveRecord::Base
  attr_accessible :name, :info, :release_date

  belongs_to :artist
  has_many :songs, :dependent => :destroy
end
