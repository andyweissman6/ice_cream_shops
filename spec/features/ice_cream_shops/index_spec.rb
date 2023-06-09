require 'rails_helper'

RSpec.describe "/ice_cream_shops (IceCreamShop Index page)", type: :feature do
  #User Story 1
  describe "as a visitor, when I visit IceCreamShop index page" do
    let!(:sprinkles) { IceCreamShop.create!(name: "Sprinkles",
                                        open_24_hrs: true,
                                        num_employees: 6) }

    let!(:nugs) { IceCreamShop.create!(name: "Nugs", 
                                    open_24_hrs: false,
                                    num_employees: 3) }

    it "should see the name of each Ice Cream Shop record" do
      visit "/ice_cream_shops"
      expect(page).to have_content(sprinkles.name)
      expect(page).to have_content(nugs.name)
    end

    it "I see that records are ordered by most recently created first and next to each of the records I see when it was created" do
      visit "/ice_cream_shops"
        expect(page).to have_content(sprinkles.name)
        expect(page).to have_content(nugs.name)
        expect(page).to have_content(sprinkles.created_at)
        expect(page).to have_content(nugs.created_at)
    end

    it "see a link at the top of the page that takes me to the Ice Cream Shops Index" do
      visit "/"
      expect(page).to have_link("Ice Cream Shops Index", href: "/ice_cream_shops")
    end

    it "see a link to create a new Parent record, 'New Parent'" do
      visit "/ice_cream_shops"
      expect(page).to have_link("New Ice Cream Shop", href: "/ice_cream_shops/new")
      click_link("New Ice Cream Shop")
      expect(current_path).to eq("/ice_cream_shops/new")

      fill_in "name", with: "Dave's Scoops"
      fill_in "open_24_hrs", with: false
      fill_in "num_employees", with: 4

      click_button "Create Ice Cream Shop"

      expect(current_path).to eq("/ice_cream_shops")
      expect(page).to have_content("New Ice Cream Shop")



    end
  end
end