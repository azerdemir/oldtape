class Artist < ActiveRecord::Base
  attr_accessible :bio, :end_date, :name, :start_date
end
