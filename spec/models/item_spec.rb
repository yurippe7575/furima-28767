require 'rails_helper'
describe Item do
    before do
      user = FactoryBot.create(:user)
      @item = FactoryBot.build(:item, user_id: user.id)
    end


    describe '新規投稿' do
      context '新規投稿がうまくいくとき' do
        it "全て揃っている時保存できる" do
          expect(@item).to be_valid
        end
      end  
    end

    context '新規投稿がうまくいかないとき' do
      it "item_nameが空だと登録できない" do
        @item.item_name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Item name can't be blank")
      end

      it "setumeiが空だと登録できない" do
        @item.setumei = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Setumei can't be blank")
      end

      

      it "costが空だと登録できない" do
        @item.cost = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Cost can't be blank")
      end

      it "costが299以下だと登録できない" do
        @item.cost = '299'
        @item.valid?
        expect(@item.errors.full_messages).to include("Cost must be greater than 300")
      end

      it "costが10000000以上だと登録できない" do
        @item.cost = '10000000'
        @item.valid?
        expect(@item.errors.full_messages).to include("Cost must be less than 9999999")
      end

      it "costが全角英数だと登録できない" do
        @item.cost = '３３３'
        @item.valid?
        expect(@item.errors.full_messages).to include("Cost is not a number")
      end

      it "categori_idが1だと登録できない" do
        @item.categori_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Categori must be other than 1")
      end

      it "status_idが1だと登録できない" do
        @item.status_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Status must be other than 1")
      end

      it "haisou_cost_idが1だと登録できない" do
        @item.haisou_cost_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Haisou cost must be other than 1")
      end

      it "place_idが0だと登録できない" do
        @item.place_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include("Place must be other than 0")
      end

      it "days_idが1だと登録できない" do
        @item.days_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Days must be other than 1")
      end




    end
end
