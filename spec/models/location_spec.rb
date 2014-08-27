require 'rails_helper'

describe Location do
  it {should have_many(:bikes)}
  it {should validate_presence_of :neighborhood}

  describe "#unique_locations" do
    it 'returns only unique locations' do
      location1 = Location.create(neighborhood: "alberta")
      location2 = Location.create(neighborhood: "alberta")
      location3 = Location.create(neighborhood: "aLberta")
      expect(Location.unique_locations).to eq ["Alberta"]
    end
  end
end
