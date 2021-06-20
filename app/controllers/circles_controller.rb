class CirclesController < ApplicationController
  
  def index
     @family_name = Profile.find_by(user_id: current_user.id).family_name
     day = Date.today
     @calorie = CookedFood.where(meal_date: day).where(user_id: current_user.id).sum(:calorie).round(3)
     @protein = CookedFood.where(meal_date: day).where(user_id: current_user.id).sum(:protein).round(3)
     @carbohydrate = CookedFood.where(meal_date: day).where(user_id: current_user.id).sum(:carbohydrate).round(3)
     @sugar_content = CookedFood.where(meal_date: day).where(user_id: current_user.id).sum(:sugar_content).round(3)
     @fiber = CookedFood.where(meal_date: day).where(user_id: current_user.id).sum(:fiber).round(3)
     @salt = CookedFood.where(meal_date: day).where(user_id: current_user.id).sum(:salt).round(3)
     @lipid = CookedFood.where(meal_date: day).where(user_id: current_user.id).sum(:lipid).round(3)
     @meal_quantity = CookedFood.where(meal_date: day).where(user_id: current_user.id).sum(:meal_quantity)
  end

  def new
  end
end
