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

    let!(:vanilla) {sprinkles.flavors.create!(  flavor_name: "vanilla",
                                      vegan: true,
                                      grams_sugar: 50 )}
    
    let!(:snozzberry) {sprinkles.flavors.create!( flavor_name: "snozzberry",
                                        vegan: false,
                                        grams_sugar: 69 )}

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

    it "see a count of the number of flavors associated with this ice cream shop" do
      visit "/ice_cream_shops/#{sprinkles.id}"
      expect(page).to have_content("Total number of flavors: 2")
    end

    it "see a link to take me to that ice cream shop's `flavor` page ('/ice_cream_shops/:id/flavors')" do
      visit "/ice_cream_shops/#{sprinkles.id}"
      expect(page).to have_link("This Shop's Flavors", href: "/ice_cream_shops/#{sprinkles.id}/flavors")

    end
  end
end
