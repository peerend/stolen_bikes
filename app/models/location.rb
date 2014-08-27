class Location < ActiveRecord::Base

  has_many :bikes
  validates :neighborhood, :presence => true

  def total_thefts
    Bike.where(location_id: self.id).count
  end

end
