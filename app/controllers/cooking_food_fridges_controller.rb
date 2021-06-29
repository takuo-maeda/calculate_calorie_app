class CookingFoodFridgesController < ApplicationController
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
  
  def edit
    @cooking = Cooking.find(params[:id])
    @form = CookingFoodFridge.new(cooking: @cooking)
  end

  def update
    @cooking = Cooking.find(params[:id])
    @form = CookingFoodFridge.new(cooking_params, cooking: @cooking)
    if @form.valid?
      @form.save
      return redirect_to cooking_path(@cooking)
    else
      render :edit
    end
  end

  def destroy
    @cooking = Cooking.find(params[:id])
    if @cooking.destroy
      redirect_to root_path
    end
  end

  private

  def cooking_params
    params.require(:cooking_food_fridge).permit(:meal_name, :meal_weight, :food_name, :food_weight)
  end
  
end