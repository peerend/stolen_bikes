class Bike < ActiveRecord::Base

  validates :name, :presence => true
  validates :description, :presence => true

  belongs_to :location

end
