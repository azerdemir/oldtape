class Artist
  include Mongoid::Document

  field :name, type: String
  field :bio, type: String
  field :start_date, type: Integer
  field :end_date, type: Integer

  has_many :albums
end
