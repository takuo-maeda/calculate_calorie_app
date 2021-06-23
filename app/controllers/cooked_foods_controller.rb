class CookedFoodsController < ApplicationController
  

  def new
    @cooked_food = CookedFood.new
  end

  def create
    @cooked_food = CookedFood.new(cooked_food_params)
    if @cooked_food.save
       redirect_to root_path
    else
       render :new
    end
  end

  def search
    #Viewのformで取得したパラメータをモデルに渡す
    @shops = CookedFood.search(params[:search])
    render :new
  end


  def cooked_food_params
    params.require(:cooked_food).permit(:meal_date, :meal_time_id, :ganre, :shop_name, :dish_name, :price, :meal_quantity, :calorie, :protein, :carbohydrate, :sugar_content, :lipid, :fiber, :salt).merge(user_id: current_user.id)
  end
end
