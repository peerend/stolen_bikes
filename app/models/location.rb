class Location < ActiveRecord::Base

  has_many :bikes
  validates :neighborhood, :presence => true

  def total_thefts
    Bike.where(location_id: self.id).count
  end

  def self.unique_locations
    locations = Location.all
    neighborhoods = []
    locations.each do |location|
      neighborhoods << location.neighborhood.capitalize
    end
    neighborhoods.uniq!
  end
end
