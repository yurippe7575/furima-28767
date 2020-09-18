class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
     belongs_to_active_hash :categori
     belongs_to_active_hash :haisou_cost
     belongs_to_active_hash :place
     belongs_to_active_hash :day
     belongs_to_active_hash :status
    


    belongs_to :user

    has_one_attached :image




    #def message_params
      #params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  
 
    #空の投稿を保存できないようにする
    with_options presence: true do
      validates :title, :text, :categori_id, :haisou_cost_id, :status_id, :days_id, :place_id
    end

    #選択が「--」のままになっていないか
    with_options numericality: { other_than: 1 } do #メッセージ
     validates :categori_id, :haisou_cost_id, :status_id, :days_id, :place_id
    end
  
end
  
