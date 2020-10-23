require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "When I visit a mechanics show page" do
    it 'I see their name, years of experience, 
    and names of all rides they’re working on
    And I also see a form to add a ride to their workload
    When I fill in that field with an id of a ride that exists 
    in the database
    And I click submit
    I’m taken back to that mechanics show page
    And I see the name of that newly added ride 
    on this mechanics show page' do
      
      mike = Mechanic.create!(
        name: "Mike Carman",
        years_of_experience: 7
      )

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

      RideMechanic.create!(
        mechanic_id: mike.id,
        ride_id: tower.id
      )
      RideMechanic.create!(
        mechanic_id: mike.id,
        ride_id: twister.id
      )
      visit "/mechanics/#{mike.id}"

      expect(page).to have_content("Mike")
      expect(page).to have_content("Years of Experience: 7")

      expect(page).to have_content("Current rides they’re working on:")
      expect(page).to have_content("Tower of Doom")
      expect(page).to have_content("Twister 2")
    end
  end
end