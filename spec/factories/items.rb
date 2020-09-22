FactoryBot.define do
  factory :item do
    
    item_name     {"aあア"}
    setumei         {"aaaあああア"}
    categori_id     {2}
    status_id     {2}
    haisou_cost_id  {2}
    place_id        {2}
    days_id        {2}
    cost           {"3000"}
    association :user
    
    # belongs_to :user
  end
end
