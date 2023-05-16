class IceCreamShopsController < ApplicationController
  def index
    @ice_cream_shops = IceCreamShop.order(created_at: :desc)
  end

  def show
    @ice_cream_shop = IceCreamShop.find(params[:id])
    # require 'pry'; binding.pry
    # just looking for one instance, not all. so not pluralizing
  end

  def new
  end

  def create
    @ice_cream_shop = IceCreamShop.create(name: params[:name], 
                        open_24_hrs: params[:open_24_hrs],
                        num_employees: params[:num_employees])

    redirect_to "/ice_cream_shops"
    # require 'pry'; binding.pry
  end

  def edit
    @ice_cream_shop = IceCreamShop.find(params[:id])
  end

  def update
    @ice_cream_shop = IceCreamShop.find(params[:id])
    @ice_cream_shop.update(name: params[:name], 
                        open_24_hrs: params[:open_24_hrs],
                        num_employees: params[:num_employees])
    
    redirect_to "/ice_cream_shops/#{@ice_cream_shop.id}"
  end
end