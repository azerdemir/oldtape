class Song
  include Mongoid::Document

  field :name, type: String
  field :track, type: Integer
  field :duration, type: String

  belongs_to :album

  # Fix it later for mongodb
  #has_many :mixtape_songs
  #has_many :mixtapes, :through => :mixtape_songs

  # Fix it later for mongodb
  #include Tire::Model::Search
  #include Tire::Model::Callbacks

  # old basic seach method
  #def self.search(search)
  #  if search.blank?
  #    nil
  #  else
  #    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  #  end
  #end
end
