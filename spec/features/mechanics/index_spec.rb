require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "When I visit a mechanics index page" do
    it 'I see a header saying “All Mechanics”' do
      
      mike = Mechanic.create!(
        name: "Mike Carman",
        years_of_experience: 7
      )

      visit '/mechanics'

      expect(page).to have_content("All Mechanics")
    end
    it 'I see a header saying “All Mechanics”' do
      
      mike = Mechanic.create!(
        name: "Mike Carman",
        years_of_experience: 7
      )
      efren = Mechanic.create!(
        name: "Efren DelCarro",
        years_of_experience: 10
      )

      visit '/mechanics'

      expect(page).to have_content("Mike Carman: 7 Years of Experience")
      expect(page).to have_content("Efren DelCarro: 10 Years of Experience")
    end
  end
  
  
end
