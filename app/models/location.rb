class Location < ActiveRecord::Base

  has_many :bikes
  validates :neighborhood, :presence => true

end
