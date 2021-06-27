class CookingFoodFridge

    include ActiveModel::Model
    attr_accessor :meal_name, :meal_weight, :food_name, :food_weight, :cooking_id, :food_id
  
  
    with_options presence: true do
      validates :meal_name, :meal_weight
      validates :food_name, :food_weight
    end
  
    def save
      cooking = Cooking.create(meal_name: meal_name, meal_weight: meal_weight)
      food = Food.where(food_name: food_name,food_weight: food_weight).first_or_initialize
      food.save
      
      CookingFood.create(cooking_id: cooking.id, food_id: food.id)
    end
  
  end