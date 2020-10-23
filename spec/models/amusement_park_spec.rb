require 'rails_helper'

RSpec.describe AmusementPark, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :price_of_admission }
  end

  describe "relationships" do
    it { should have_many(:rides) }
  end

  it 'can average the thrill rating of rides' do
    elitch = AmusementPark.create!(
        name: "Elitch Gardens",
        price_of_admission: 45
      )

      tower = Ride.create!( 
        name: "Tower of Doom",  
        amusement_park_id: elitch.id,
        thrill_rating: 10
      )
      twister = Ride.create!( 
        name: "Twister 2",
        amusement_park_id: elitch.id,
        thrill_rating: 8
      )

      expect(elitch.average_thrill).to eq(9)
  end
end
