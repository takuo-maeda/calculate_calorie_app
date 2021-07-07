class CreateHomeCookedMeals < ActiveRecord::Migration[6.0]
  def change
      create_table :home_cooked_meals do |t|
      t.timestamps
    end
  end
end
