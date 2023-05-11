require 'rails_helper'

RSpec.describe "/ice_cream_shops (IceCreamShop Index page)", type: :feature do
  #User Story 1
  describe "as a visitor, when I visit IceCreamShop index page" do
    let!(:sprinkles) {IceCreamShop.create!(name: "Sprinkles",
                                        open_24_hrs: true,
                                        num_employees: 6) }

    let!(:nugs) {IceCreamShop.create!(name: "Nugs", 
                                    open_24_hrs: false,
                                    num_employees: 3) }

    it "should see the name of each parent record" do
      visit "/ice_cream_shops"

      expect(page).to have_content(sprinkles.name)
      expect(page).to have_content(nugs.name)
    end
  end
end