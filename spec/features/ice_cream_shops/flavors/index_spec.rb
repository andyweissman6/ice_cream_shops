require "rails_helper"

RSpec.describe "/parents/:parent_id/child_table_name", type: :feature do
  describe "As a visitor, when I Icecream Shop Flavors index page" do

    let!(:sprinkles) {IceCreamShop.create!(   name: "Sprinkles",
                                              open_24_hrs: true,
                                              num_employees: 6) }
                                        

    let!(:vanilla) {sprinkles.flavors.create!(  flavor_name: "vanilla",
                                                vegan: true,
                                                grams_sugar: 50 )}
    
    let!(:snozzberry) {sprinkles.flavors.create!( flavor_name: "snozzberry",
                                                  vegan: false,
                                                  grams_sugar: 69 )}
    
    it "I see each flavor that is associated with that icecream shop with each flavor's attributes" do
      visit "/ice_cream_shops/#{sprinkles.id}/flavors"

      expect(page).to have_content("Flavors Index for #{sprinkles.name}")
      expect(page).to have_content(vanilla.flavor_name)
      expect(page).to have_content(vanilla.vegan)
      expect(page).to have_content(vanilla.grams_sugar)
      expect(page).to have_content(snozzberry.flavor_name)
      expect(page).to have_content(snozzberry.vegan)
      expect(page).to have_content(snozzberry.grams_sugar)
    end
  end
end