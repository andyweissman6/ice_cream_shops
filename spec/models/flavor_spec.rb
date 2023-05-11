require 'rails_helper'
# require_relative '../../app/models/ice_cream_shop.rb'

RSpec.describe Flavor, type: :model do
  describe 'relationships' do
    it { should belong_to :ice_cream_shop }
  end
end
