class MerchantsController < ApplicationController
  def index
    @merchants = MerchantService.merchants
  end

  def show
    @merchant = MerchantService.merchant(params[:id])
    @items = MerchantItemsService.merchant_items(params[:id])
  end
end