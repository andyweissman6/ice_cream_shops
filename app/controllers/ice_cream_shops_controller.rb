class IceCreamShopsController < ApplicationController
  def index
    @ice_cream_shops = IceCreamShop.order(created_at: :desc)
  end

  def show
    @ice_cream_shop = IceCreamShop.find(params[:id])
    # require 'pry'; binding.pry
    # just looking for one instance, not all. so not pluralizing
  end
end