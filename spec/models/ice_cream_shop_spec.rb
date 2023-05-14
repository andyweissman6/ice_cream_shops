require "rails_helper"

RSpec.describe IceCreamShop, type: :model do
  describe "relationships" do
    it { should have_many :flavors }
  end

  #User Story 7
  describe "instance methods" do
    let!(:sprinkles) { IceCreamShop.create!(name: "Sprinkles",
                                        open_24_hrs: true,
                                        num_employees: 6) }

    let!(:vanilla) {sprinkles.flavors.create!(  flavor_name: "vanilla",
                                      vegan: true,
                                      grams_sugar: 50 )}
    
    let!(:snozzberry) {sprinkles.flavors.create!( flavor_name: "snozzberry",
                                        vegan: false,
                                        grams_sugar: 69 )}
    it "#flavor_count" do
      expect(sprinkles.flavor_count).to eq(2)
    end
  end
end