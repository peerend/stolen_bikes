require 'rails_helper'

describe Bike do
  it {should belong_to(:location)}
  it {should validate_presence_of :name}

end