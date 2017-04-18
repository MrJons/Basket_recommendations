require 'rails_helper'

feature 'basket' do

  context 'There is nothing in the basket' do
    scenario "A 'nothing in basket' message is shown" do
      visit '/'
      expect(page).to have_content("There is currently nothing in your basket.")
    end
  end

  context 'Items are in the basket' do
    before :each do
      Rails.application.load_seed
    end

    scenario "Item name and price should be shown" do
      visit '/'
      expect(page).to have_content("Bread")
      expect(page).to have_content("£1.29")
      expect(page).to have_content("Milk")
      expect(page).to have_content("£0.99")
    end
  end

end
