class IceCreamShop < ApplicationRecord
  has_many :flavors

  def flavor_count
    flavors.size
  end
end
