class Album < ActiveRecord::Base

  require 'lib/album_name_validator.rb'
  require 'lib/year_validator.rb'

  belongs_to :artist
  validates :name, :album_name => true
  validates :year, :year => true
end
