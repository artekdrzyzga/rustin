class AddStatusToTranheads < ActiveRecord::Migration[5.1]
  def change
    add_column :tranheads, :status, :integer
  end
end
