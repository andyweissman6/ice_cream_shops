require "rails_helper"

RSpec.describe "/flavors (Flavors Index page)", type: :feature do
  describe "as a visitor, when I visit Flavors index page" do
    let!(:sprinkles) { IceCreamShop.create!(name: "Sprinkles",
                                        open_24_hrs: true,
                                        num_employees: 6) }

    let!(:vanilla) {sprinkles.flavors.create!(  flavor_name: "vanilla",
                                      vegan: true,
                                      grams_sugar: 50 )}
    
    let!(:snozzberry) {sprinkles.flavors.create!( flavor_name: "snozzberry",
                                        vegan: false,
                                        grams_sugar: 69 )}

    it "should see the attributes of each flavor" do
      visit "/flavors"

      expect(page).to have_content(vanilla.flavor_name)
      expect(page).to have_content(vanilla.vegan)
      expect(page).to have_content(vanilla.grams_sugar)

      expect(page).to have_content(snozzberry.flavor_name)
      expect(page).to have_content(snozzberry.vegan)
      expect(page).to have_content(snozzberry.grams_sugar)
      save_and_open_page
    end
  end
end