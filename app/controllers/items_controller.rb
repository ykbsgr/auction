class ItemsController < ApplicationController
  def index
    @items = Item.all
  end


  def show
    @item = Item.find(params[:id]) #idでDBを検索する
  end
end
