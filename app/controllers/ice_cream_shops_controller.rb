class IceCreamShopsController < ApplicationController
  def index
    @ice_cream_shops = IceCreamShop.all
  end
end