class CreateAdminPayments < ActiveRecord::Migration
  def change
    create_table :admin_payments do |t|
		t.decimal :admin_share
		t.decimal :sponsor_share
		t.decimal :user_payee
		t.decimal :tax
      t.timestamps null: false
    end
  end
end
