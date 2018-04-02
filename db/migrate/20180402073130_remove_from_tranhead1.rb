class RemoveFromTranhead1 < ActiveRecord::Migration[5.1]
  def change
    remove_column :tranheads, :status, :integer
  end
end
