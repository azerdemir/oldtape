class Album
  include Mongoid::Document

  field :name, type: String
  field :info, type: String
  field :release_date, type: Integer

  belongs_to :artist
  has_many   :songs
end
