require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "When I visit an amusement park’s show page" do
    it 'I see the name and price of admissions for that amusement park' do
      elitch = AmusementPark.create!(
        name: "Elitch Gardens",
        price_of_admission: 45
      )
      visit "/amusement_parks/#{elitch.id}"

      expect(page).to have_content("Elitch Garden")
      expect(page).to have_content("Admissions: $45.00")
    end

    it 'I see the names of all the rides that are at that park' do
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
      visit "/amusement_parks/#{elitch.id}"

      expect(page).to have_content("Tower of Doom")
      expect(page).to have_content("Twister 2")

    end

    xit 'I see the average thrill rating of this amusement park’s rides' do

    
    end 
  end
end 