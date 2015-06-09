class CreateBlockUsers < ActiveRecord::Migration
  def change
    create_table :block_users do |t|
	t.integer :blocked_user
	t.integer :blocked_by
      t.timestamps null: false
    end
  end
end
