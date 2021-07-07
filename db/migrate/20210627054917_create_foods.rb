class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string              :food_name,    null:false
      t.integer             :food_weight,   null:false
      t.timestamps
    end
  end
end
