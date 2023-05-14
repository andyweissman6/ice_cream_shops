require "rails_helper"

RSpec.describe IceCreamShop, type: :model do
  describe "relationships" do
    it { should have_many :flavors }
  end

end