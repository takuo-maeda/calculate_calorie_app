class CreateCircles < ActiveRecord::Migration[6.0]
  def change
    create_table :circles do |t|
      t.date                 :days           ,null: false
      t.string               :tming          ,null: false
      t.references           :user           ,null: false, foreign_key: true
      t.timestamps
    end
  end
end
