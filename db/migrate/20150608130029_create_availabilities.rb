class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
		t.integer :user_id
		t.integer :day
		t.time :start_time
		t.time :end_time
      t.timestamps null: false
    end
  end
end
