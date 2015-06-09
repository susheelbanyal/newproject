class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string, :limit => 50
    add_column :users, :last_name, :string, :limit => 50
    add_column :users, :unique_code, :string, :limit => 50
	add_column :users, :date_of_birth, :datetime
	add_column :users, :sex, :integer,  :limit => 1
	add_column :users, :phone, :string,  :limit => 15
	add_column :users, :image, :string, :limit => 200
	add_column :users, :address, :string, :limit => 300
	add_column :users, :price, :decimal
	add_column :users, :profession, :string, :limit => 200
	add_column :users, :city_id, :integer
	add_column :users, :state_id, :integer
	add_column :users, :country_id, :integer
	add_column :users, :zip_code, :integer, :limit => 5 
	add_column :users, :lat, :decimal
	add_column :users, :long, :decimal
  end
end
