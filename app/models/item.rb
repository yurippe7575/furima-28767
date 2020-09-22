class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
     belongs_to_active_hash :categori
     belongs_to_active_hash :haisou_cost
     belongs_to_active_hash :place
     belongs_to_active_hash :day
     belongs_to_active_hash :status
    


    belongs_to :user

    has_one_attached :image




    def message_params
      params.require(:item).permit(:content, :image).merge(user_id: current_user.id)
    end
 
    #空の投稿を保存できないようにする
    with_options presence: true do
      validates :item_name, :setumei, :categori_id, :haisou_cost_id, :status_id, :days_id, :place_id, :cost
    end

    #選択が「--」のままになっていないか
    with_options numericality: { other_than: 0 } do #メッセージ
     validates :place_id
    end

    with_options numericality: { other_than: 1 } do #メッセージ
      validates :categori_id, :haisou_cost_id, :status_id, :days_id
    end
  
    validates :cost, format: { with: /\A[0-9]+\z/ }

    validates :cost,numericality: { greater_than: 300 }
    validates :cost,numericality: { less_than: 9999999 }
end