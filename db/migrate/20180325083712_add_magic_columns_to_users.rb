class AddMagicColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :company, :string
    add_column :users, :city, :string
    add_column :users, :street, :string
    add_column :users, :postcode, :string
    add_column :users, :phonenumber, :string
    add_column :users, :last_login_at, :datetime
    add_column :users, :last_login_ip, :string
    add_column :users, :login_count, :integer, :null => false, :default => 0
    add_column :users, :failed_login_count, :integer, :null => false, :default => 0
    add_column :users, :last_request_at, :datetime
  	add_column :users, :current_login_at, :datetime
    add_column :users, :current_login_ip, :string
    add_column :users, :admin, :integer, :null => false, :default => 0
  end
end
