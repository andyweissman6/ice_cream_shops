class IceCreamShops::FlavorsController < ApplicationController
  #^flavors controller lives inside module IceCreamShops
  def index
    @ice_cream_shop = IceCreamShop.find(params[:id])
    @flavors = @ice_cream_shop.flavors
  end
end