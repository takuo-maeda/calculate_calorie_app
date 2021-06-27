class CreateCookingFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :cooking_foods do |t|
      t.references           :cooking,   null: false, foreign_key: true
      t.references           :food,      null: false, foreign_key: true
      t.timestamps
    end
  end
end
