class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit]

  def index
    @items = Item.all.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def show
    
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

  def edit
  end



  private

  def set_item
     @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:item_name, :setumei, :image, :categori_id, :status_id, :haisou_cost_id, :place_id, :days_id, :cost).merge(user_id: current_user.id)
  end
end
