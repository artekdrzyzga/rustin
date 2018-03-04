class AddTypToAd < ActiveRecord::Migration[5.1]
  def change
    add_column :ads, :typ, :string
  end
end
