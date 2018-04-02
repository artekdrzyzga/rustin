class RemoveFromTranhead < ActiveRecord::Migration[5.1]
  def change
    remove_column :tranheads, :status, :string
  end
end
