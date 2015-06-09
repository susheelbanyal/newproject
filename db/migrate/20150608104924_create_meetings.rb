class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
	 t.integer :user_payer 	
	 t.integer :user_payee 	
	 t.integer :city_id 	
	 t.integer :state_id 	
	 t.integer :country_id
	 t.integer :zip_code
	 t.datetime :meeting_date 	
	 t.time :start_time 	
	 t.time :end_time 	
	 t.decimal :price
     t.timestamps null: false
    end
  end
end
