require 'rails_helper'

RSpec.describe "/ice_cream_shops/:id/edit (IceCreamShop Edit page)", type: :feature do
  describe "as a visitor, when I visit IceCreamShop show page" do
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
    it "see a link to update the parent 'Update Ice Cream Shop' at top of show page" do
      visit "/ice_cream_shops/#{sprinkles.id}"
      click_link("Update Ice Cream Shop")
      expect(current_path).to eq("/ice_cream_shops/#{sprinkles.id}/edit")
    end

    it "updates the Ice Cream Shop's attributes" do
      visit "/ice_cream_shops/#{sprinkles.id}/edit"

      fill_in :name, with: "Scoop Daddy"
      check(:open_24_hrs)
      fill_in :num_employees, with: 4

      click_button "Update and Submit"

      expect(current_path).to eq("/ice_cream_shops/#{sprinkles.id}")
      expect(page).to have_content("Name: Scoop Daddy")
      expect(page).to have_content("open_24_hrs: true")
      expect(page).to have_content("num_employees: 4")
    end    
  end
end