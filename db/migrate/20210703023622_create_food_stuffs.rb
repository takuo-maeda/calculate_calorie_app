class CreateFoodStuffs < ActiveRecord::Migration[6.0]
  def change
    create_table :food_stuffs do |t|
      t.string            :food_stuff    ,null: false
      t.integer           :calorie       ,null: false
      t.float             :protein       ,null: false
      t.float             :carbohydrate  ,null: false
      t.float             :sugar_content ,null: false
      t.float             :lipid         ,null: false
      t.float             :fiber         ,null: false
      t.float             :salt          ,null: false
      t.timestamps
    end
  end
end
