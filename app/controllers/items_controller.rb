class ItemsController < ApplicationController
  def index
    @items = Item.all
  end


  def show
    @item = Item.find(params[:id]) #idでDBを検索する
  end

  def new
    @item = Item.new
  end

def create
#フォームから投げられたデータを受け取る
@item = Item.new(item_params)

#これを保存する
@item.save

#show.html.erbに飛ばす
redirect_to"/items/#{@item.id}"
end

def edit
  #http://localhost:3000/items/5/edit
  #上のURLの5を取得して、@item = Item.find(5)

@item = Item.find(params[:id])

end

def update
  # :idでItem.find

@item = Item.find(params[:id])
@item.update_attributes(item_params)
@item.save
redirect_to"/items/#{@item.id}"

  # updateメソッドで上書き保存

end

private

def item_params
# params.require(:key).permit(:filter)
  params.require(:item).permit(
    :name,
    :price,
    :seller_id,
    :description,
    :email,
    :image_url
  )
 end

end
