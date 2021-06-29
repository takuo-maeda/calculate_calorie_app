class CookingsController < ApplicationController
    before_action :authenticate_user!, only:[:new]
  
    def new
      @form = CookingFoodFridge.new
    end
  
    def create
      @form = CookingFoodFridge.new(cooking_params)
      if @form.valid?
        @form.save
        return redirect_to root_path
      else
        render :new
      end
    end
    
    private
  
    def cooking_params
      params.require(:cooking_food_fridge).permit(:meal_name, :meal_weight, :food_name, :food_weight)
    end
    
  end