class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :item_name,     null: false
      t.text :setumei,         null: false
      t.integer :categori_id,     null: false
      t.integer :status_id,       null: false
      t.integer :haisou_cost_id,  null: false
      t.integer :place_id,        null: false
      t.integer :days_id,         null: false
      t.integer :cost,         null: false
      t.integer :user_id,       null: false, foreign_key: true
      t.timestamps
    end
  end
end
