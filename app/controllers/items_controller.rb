class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.valid?
      @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:item_name, :setumei, :image, :categori_id, :status_id, :haisou_cost_id, :place_id, :days_id, :cost).merge(user_id: current_user.id)
  end
end
