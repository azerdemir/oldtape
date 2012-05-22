class Song < ActiveRecord::Base
  attr_accessible :duration, :name, :order

  belongs_to :album

  has_many :mixtape_songs
  has_many :mixtapes, :through => :mixtape_songs

  def self.search(search)
    if search.blank?
      nil
    else
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    end
  end
end
