class CreateAds < ActiveRecord::Migration[5.1]
  def change
    create_table :ads do |t|
      t.string :name
      t.decimal :size
      t.string :colour
      t.text :description
      t.string :base
      t.decimal :dryingtime
      t.decimal :coverage
      t.string :image

      t.timestamps
    end
  end
end
