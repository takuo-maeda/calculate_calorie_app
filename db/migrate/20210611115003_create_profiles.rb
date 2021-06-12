class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string        :first_name        ,null: false, defalte: ""
      t.string        :last_name         ,null: false, defalte: ""
      t.string        :first_name_prono  ,null: false, defalte: ""
      t.string        :last_name_prono   ,null: false, defalte: ""
      t.string        :postal_code       ,null: false
      t.string        :prefecture        ,null: false
      t.string        :address
      t.string        :street
      t.string        :building
      t.string        :phone_number      ,null: false
      t.date          :birthday          ,null: false
      t.integer       :body_weight       ,null: false
      t.references    :user              ,null: false, foreign_key: true
      t.timestamps
    end
  end
end
