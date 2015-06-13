class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id]) #idでDBを検索する
  end
end
