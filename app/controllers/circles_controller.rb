class CirclesController < ApplicationController
  
  def index

    if Profile.pluck(:user_id).include?(set_id)
        @set_calorie = (ideal_cal * ideal_cal * 22 * 35)/10000
        @email_display = Profile.find_by(user_id: current_user.id).family_name
        body_weight = Profile.where(user_id: current_user.id).pluck(:body_weight)
        @body = (body_weight[0]*1)
      else
        @email_display = User.find(set_id).email
        @set_calorie = 2400
        body_weight = 50
        @body = (50*1)
     end
     @day = Date.today
     @days = %w(日 月 火 水 木 金 土)[Date.today.wday]
     @calorie = CookedFood.where(meal_date: @day).where(user_id: current_user.id).sum(:calorie).round(3)
     @protein = CookedFood.where(meal_date: @day).where(user_id: current_user.id).sum(:protein).round(3)
     @carbohydrate = CookedFood.where(meal_date: @day).where(user_id: current_user.id).sum(:carbohydrate).round(3)
     @sugar_content = CookedFood.where(meal_date: @day).where(user_id: current_user.id).sum(:sugar_content).round(3)
     @fiber = CookedFood.where(meal_date: @day).where(user_id: current_user.id).sum(:fiber).round(3)
     @salt = CookedFood.where(meal_date: @day).where(user_id: current_user.id).sum(:salt).round(3)
     @lipid = CookedFood.where(meal_date: @day).where(user_id: current_user.id).sum(:lipid).round(3)
     @meal_quantity = CookedFood.where(meal_date: @day).where(user_id: current_user.id).sum(:meal_quantity)
  end

  def new
  end

  private

  def set_id
    set_id = current_user.id
  end

  def ideal_cal
    if Profile.pluck(:user_id).include?(set_id)
      set_tall = Profile.find_by(user_id: current_user.id).tall
    end
  end
  

end
