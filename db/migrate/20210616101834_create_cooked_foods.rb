class CreateCookedFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :cooked_foods do |t|
      t.string            :shop          ,null: false
      t.string            :dish          ,null: false
      t.integer           :calorie       ,null: false
      t.integer           :protein       ,null: false
      t.integer           :carbohydrate  ,null: false
      t.integer           :sugar_content ,null: false
      t.integer           :lipid         ,null: false
      t.integer           :fiber         ,null: false
      t.integer           :salt          ,null: false
      t.integer           :meal_quantiy  ,null: false
      t.integer           :price         ,null: false
      t.timestamps
    end
  end
end
