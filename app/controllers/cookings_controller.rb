class CookingsController < ApplicationController
    before_action :authenticate_user!, only:[:new]
  
    def index
      @cookings = Cooking.all.includes(:food).order('created_at DESC')
    end
  
    def new
      @cooking = CookingFoodFridge.new
    end
  
    def create
      @cooking = CookingFoodFridge.new(cooking_params)
      if @cooking.valid?
        @cooking.save
        return redirect_to root_path
      else
        render :new
      end
    end
  
    private
  
    def car_params
      params.require(:cooking_food_fridge).permit(:meal_name, :meal_weight, :food_name, :food_weight).merge(cook_id: cooking.id,food_id: food.id)
    end
    
  end