class CookingsController < ApplicationController
  def new
    @form = CookingFridge.new
  end

  def create
    @form = CookingFridge.new(post_params)

    if @form.save
      redirect_to posts_path, notice: 'The post has been created.'
    else
      render :new
    end
  end

  def edit
    load_post

    @form = PostForm.new(post: @post)
  end

  def update
    load_post

    @form = PostForm.new(post_params, post: @post)

    if @form.save
      redirect_to @post, notice: 'The post has been updated.'
    else
      render :edit
    end
  end

  private

  def post_params
    params.require(:cooking).permit(:meal_name, :meal_weight, :food_name, :food_weight)
  end

  def load_post
    @cooking = current_user.cookings.find(params[:id])
  end
end
