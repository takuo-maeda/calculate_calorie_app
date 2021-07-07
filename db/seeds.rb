# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

CSV.foreach('db/Sheet1-表1.csv', headers: true)  do |row|
  CookedFood.create(
  meal_date: row['meal_data'],
  meal_time_id: row['meal_time_id'],
  shop_name: row['shop_name'],
  dish_name: row['dish_name'],
  ganre: row['ganre'],
  price: row['price'],
  meal_quantity: row['meal_quantity'],
  calorie: row['calorie'],
  protein: row['protein'],
  carbohydrate: row['carbohydrate'],
  sugar_content: row['sugar_content'],
  lipid: row['lipid'],
  fiber: row['fiber'],
  salt: row['salt'],
  user_id: row['user_id'],
)
end