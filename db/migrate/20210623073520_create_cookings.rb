class CreateCookings < ActiveRecord::Migration[6.0]
  def change
      create_table :cookings do |t|
      t.string          :meal_name    ,null: false
      t.integer         :meal_weight  ,null: false
      t.timestamps
    end
  end
end
