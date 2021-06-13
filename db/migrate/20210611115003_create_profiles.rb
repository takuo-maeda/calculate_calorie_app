class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string        :family_name        ,null: false
      t.string        :first_name         ,null: false
      t.string        :family_name_prono  ,null: false
      t.string        :first_name_prono   ,null: false
      t.string        :postal_code       ,null: false
      t.string        :prefecture_id     ,null: false
      t.string        :address           ,null: false
      t.string        :street            ,null: false
      t.string        :building
      t.string        :phone_number      ,null: false
      t.date          :birthday          ,null: false
      t.integer       :sex               ,null: false
      t.integer       :body_weight       ,null: false
      t.references    :user              ,null: false, foreign_key: true
      t.timestamps
    end
  end
end
