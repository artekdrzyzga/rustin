class CreateTranheads < ActiveRecord::Migration[5.1]
  def change
    create_table :tranheads do |t|
      t.integer :user_id
      t.string :status

      t.timestamps
    end
  end
end
