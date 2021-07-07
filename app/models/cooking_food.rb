class CookingFood < ApplicationRecord
  belongs_to :food
  belongs_to :cooking
end
