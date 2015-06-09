class CreateSponsorNetworks < ActiveRecord::Migration
  def change
    create_table :sponsor_networks do |t|
		t.integer :user_id
		t.integer :sponsor_user_id
      t.timestamps null: false
    end
  end
end
