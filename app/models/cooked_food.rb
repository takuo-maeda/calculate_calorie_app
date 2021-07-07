class CookedFood < ApplicationRecord
  # belongs_to :circle
  # belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :meal_time

  def self.search(search)
    if search
      CookedFood.where(['shop_name LIKE ? OR dish_name LIKE ?', "%#{search}%" , "%#{search}%"])
    else
      CookedFood.none
    end
  end
end
