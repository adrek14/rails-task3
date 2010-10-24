class Artist < ActiveRecord::Base

  #include ActiveModel::Validations

  require 'lib/name_validator.rb'
  require 'lib/genre_validator.rb'

  has_many :albums, :dependent => :destroy 
  validates :name, :name => true #:presence => true, :length => {:minimum => 1, :maximum => 40}
  validates :genre, :genre => true

  before_save :capitalize

  def capitalize
    self.name = name.split(" ").map { |w| w.capitalize }.join(" ")
  end
end
