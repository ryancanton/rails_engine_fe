class ItemsController < ApplicationController
  def show
    @item = ItemService.item(params[:id])
  end
end