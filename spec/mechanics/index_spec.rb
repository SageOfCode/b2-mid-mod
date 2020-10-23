require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "When I visit a mechanics index page" do
    it 'I see a header saying “All Mechanics”' do

      visit "/mechanics"

      expect(page).to have_content("All Mechanics")
    end
  end
  
  
end
