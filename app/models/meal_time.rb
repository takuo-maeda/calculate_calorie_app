class MealTime < ActiveHash::Base
  self.data = [
    {id: 1, meal_time_id: '選択してください' },
    {id: 2, meal_time_id: '朝食'}, {id: 3, meal_time_id: '昼食'}, 
    {id: 4, meal_time_id: '夕食'}, {id: 5, meal_time_id: '間食'}
  ]

  end