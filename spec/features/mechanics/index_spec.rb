require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "When I visit a mechanics index page" do
    it 'I see a header saying “All Mechanics”' do
      
      mike = Mechanic.create!(
        name: "Mike",
        years_of_experience: 7
      )

      visit '/mechanics'

      expect(page).to have_content("All Mechanics")
    end
    it 'I see a header saying “All Mechanics”' do
      
      mike = Mechanic.create!(
        name: "Mike",
        years_of_experience: 7
      )

      visit '/mechanics'

      expect(page).to have_content("All Mechanics")
    end
  end
  
  
end
