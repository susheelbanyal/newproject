class CreateNegotiableRates < ActiveRecord::Migration
  def change
    create_table :negotiable_rates do |t|
		t.integer :user_payer
		t.integer :user_payee
		t.decimal :price
      t.timestamps null: false
    end
  end
end
