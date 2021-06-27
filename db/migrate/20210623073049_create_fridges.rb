class CreateFridges < ActiveRecord::Migration[6.0]
  def change
      create_table :fridges do |t|
      t.string         :name    ,null: false
      t.integer        :weight  ,null: false
      t.timestamps
    end
  end
end
