require "rails_helper"

RSpec.describe Flavor, type :model do
  describe "relationships" do
    it { should belong_to :ice_cream_shop }
  end
end