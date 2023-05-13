require 'rails_helper'

RSpec.describe "/ice_cream_shops/:id (Flavor Show page)", type: :feature do
  #User Story 2
  describe "as a visitor, when I visit specific id Flavor page" do
    let!(:sprinkles) { IceCreamShop.create!(name: "Sprinkles",
                                        open_24_hrs: true,
                                        num_employees: 6) }

    let!(:vanilla) {sprinkles.flavors.create!(  flavor_name: "vanilla",
                                                      vegan: true,
                                                      grams_sugar: 50 )}

    it "sees the flavor with that id including the flavor's attributes" do
      visit "/flavors/#{vanilla.id}"

      expect(page).to have_content(vanilla.flavor_name)
      expect(page).to have_content(vanilla.vegan)
      expect(page).to have_content(vanilla.grams_sugar)
      save_and_open_page
    end
  end
end