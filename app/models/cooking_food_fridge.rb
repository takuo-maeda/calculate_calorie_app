class CookingFoodFridge

    include ActiveModel::Model
    attr_accessor :meal_name, :meal_weight, :food_name, :food_weight, :cooking_id, :food_id
  
  
    with_options presence: true do
      validates :meal_name, :meal_weight
      validates :food_name, :food_weight
    end
  #// carがすでに保存されているものか、新規のものかで、PUTとPATCHを分ける
  delegate :persisted?, to: :cooking

  def initialize(attributes = nil, cooking: Cooking.new)
    @cooking = cooking
    attributes ||= default_attributes
    super(attributes)
  end

  def save

    ActiveRecord::Base.transaction do
      @cooking.update(meal_name: meal_name, meal_weight: meal_weight, food_name: food_name, food_weight: food_weight)

      #// @carに紐付くタグがあれば、car_tagsテーブルの紐付くレコードを全て消去する
      @cooking.cooking_food.each do |food|
        food.delete
      end

      #// tag_listのタグの数だけ、tagsテーブルと、car_tagsテーブルに保存する
        food = Food.where(food_name: food_name, food_weight: food_weight).first_or_initialize
        food.save

        cooking_food = CookingFood.where(cooking_id: @cooking.id, food_id: food.id).first_or_initialize
        cooking_food.update(cooking_id: @cooking.id, food_id: food.id)
      end
    end

  def to_model
    cooking
  end

  private

  attr_reader :cooking
  def default_attributes
    {
      meal_name: cooking.meal_name,
      meal_weight: cooking.meal_name
    }
  end
  
end