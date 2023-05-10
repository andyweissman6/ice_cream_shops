require "rails_helper"

RSpec.describe IceCreamShop, type :model do
  describe "relationships" do
    #we are testing relationship of parent(one) to child(many)
    it { should have_many :flavors }
  end
end