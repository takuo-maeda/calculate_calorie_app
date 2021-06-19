class CookedFoodsController < ApplicationController

  def index
  end

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

  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      CookedFood.where(['name LIKE ?', "%#{search}%"])
    else
      CookedFood.all #全て表示。
    end
  end

  private
  def cooked_food_params
    params.require(:cooked_food).permit(:meal_date, :meal_time, :ganre, :shop_name, :dish_name, :price, :meal_quantity, :calorie, :protein, :carbohydrate, :sugar_content, :lipid,
    :fiber, :salt).merge(user_id: current_user.id)
  end

end
