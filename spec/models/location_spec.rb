require 'rails_helper'

describe Location do
  it {should have_many(:bikes)}

end