class Album < ActiveRecord::Base
  belongs_to :artist
  validates :name, :presence => true, :length => {:minimum => 1, :maximum => 40}
end
