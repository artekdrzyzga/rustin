class AddItemCountTo < ActiveRecord::Migration[5.1]
  def change
    add_column :tranelems, :item_count, :integer, :default => 0
  end
end
