require 'rails_helper'

feature 'product recommendation' do

  context 'There are no recommendations' do
    scenario "A 'no current recommendations' message is shown" do
      visit '/'
      expect(page).to have_content("Uh oh!")
      expect(page).to have_content("There are currently no recommendations,
                          please build up a history so we know what you like.")
    end
  end

  context 'There are recommendations ' do
    before :each do
      Rails.application.load_seed
    end

    scenario "Item name and price should be shown" do
      visit '/'
      expect(page).to have_content("Biscuits")
      expect(page).to have_content("£0.80")
      expect(page).to have_content("Coffee")
      expect(page).to have_content("£2.90")
    end

    scenario "should not show items that dont match recommendation criteria" do
      visit "/"
      expect(page).not_to have_content("Crisps")
      expect(page).not_to have_content("£1.50")
    end
  end

end
