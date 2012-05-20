class Song < ActiveRecord::Base
  attr_accessible :duration, :name, :order, :references

	belongs_to :album
end
