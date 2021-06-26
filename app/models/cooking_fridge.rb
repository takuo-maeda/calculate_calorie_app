class CookingFridge
    include ActiveModel::Model
  
    attr_accessor :meal_name, :meal_weight, :food_name, :food_weight
  
    validates :meal_name, :meal_weight, presence: true
    validates :food_name,:food_weight, presence: true
  
    delegate :persisted?, to: :cooking
  
    def initialize(attributes = nil, cooking: Cooking.new)
      @cooking = cooking
      attributes ||= default_attributes
      super(attributes)
    end
  
    def save
      return if invalid?
  
      ActiveRecord::Base.transaction do
        foodstuff = foodstuff_name.map { |name| Fridge.find_or_create_by!(food_name: food_name) }
        cooking.update!(meal_name: meal_name, meal_weight: meal_weight, food_namr: food_name)
      end
    rescue ActiveRecord::RecordInvalid
      false
    end
  
    def to_model
      cooking
    end
  
    private
  
    attr_reader :cooking
  
    def default_attributes
      {
        meal_name: cooking.meal_name,
        meal_weight: cooking.meal_weight,
        food_name: cooking.fridge.pluck(:food_name).join(',')
      }
    end
  
    def split_tag_names
      tag_names.split(',')
    end
  end
