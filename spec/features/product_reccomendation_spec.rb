require 'rails_helper'

feature 'product reccomendation' do

  context 'There are no reccomendations' do
    scenario "A 'no current reccomendations' message is shown" do
      visit '/'
      expect(page).to have_content("Uh oh!")
      expect(page).to have_content("There are currently no reccomendations,
                          please build up a history so we know what you like.")
    end
  end

  # context 'Items are in the basket' do
  #   before :each do
  #     Rails.application.load_seed
  #   end
  #
  #   scenario "Item name and price should be shown" do
  #     visit '/'
  #     expect(page).to have_content("Bread")
  #     expect(page).to have_content("£1.29")
  #     expect(page).to have_content("Milk")
  #     expect(page).to have_content("£0.99")
  #   end
  # end

end
