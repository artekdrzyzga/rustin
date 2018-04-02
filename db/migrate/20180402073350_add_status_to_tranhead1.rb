class AddStatusToTranhead1 < ActiveRecord::Migration[5.1]
  def change
    add_column :tranheads, :status, :string
  end
end
