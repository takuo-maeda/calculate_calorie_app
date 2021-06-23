class CreateCookedFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :cooked_foods do |t|
      t.date              :meal_date     ,null: false
      t.integer           :meal_time_id  ,null: false
      t.string            :ganre         ,null: false
      t.string            :shop_name     ,null: false
      t.string            :dish_name     ,null: false
      t.integer           :price         ,null: false
      t.integer           :meal_quantity  ,null: false
      t.float             :calorie       ,null: false
      t.float             :protein       ,null: false
      t.float             :carbohydrate  ,null: false
      t.float             :sugar_content ,null: false
      t.float             :lipid         ,null: false
      t.float             :fiber         ,null: false
      t.float             :salt          ,null: false
      t.references        :user          ,null: false, foreign_key: true
      t.timestamps
    end
  end
end
