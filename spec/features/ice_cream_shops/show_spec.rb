require 'rails_helper'

RSpec.describe "/ice_cream_shops/:id (IceCreamShop Show page)", type: :feature do
  #User Story 2
  describe "as a visitor, when I visit specific id IceCreamShop page" do
    let!(:sprinkles) {IceCreamShop.create!(name: "Sprinkles",
                                        open_24_hrs: true,
                                        num_employees: 6) }

    let!(:nugs) {IceCreamShop.create!(name: "Nugs", 
                                    open_24_hrs: false,
                                    num_employees: 3) }

    it "see the parent with that id including the parent's attributes" do
      visit "/ice_cream_shops/#{sprinkles.id}"
      # visit "/ice_cream_shops/#{nugs.id}"
# save_and_open_page
      expect(page).to have_content(sprinkles.name)
      expect(page).to have_content(sprinkles.open_24_hrs)
      expect(page).to have_content(sprinkles.num_employees)
      
      expect(page).to_not have_content(nugs.name)
      expect(page).to_not have_content(nugs.open_24_hrs)
      expect(page).to_not have_content(nugs.num_employees)
    end
  end
end
