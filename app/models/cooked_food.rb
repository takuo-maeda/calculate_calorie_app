class CookedFood < ApplicationRecord
  # belongs_to :circle
  # belongs_to :user

  def self.search(search)
    if search
      CookedFood.where(['shop_name LIKE ? OR dish_name LIKE ?', "%#{search}%" , "%#{search}%"])
    else
      CookedFood.all
    end
  end
end
