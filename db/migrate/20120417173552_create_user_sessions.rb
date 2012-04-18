class CreateUserSessions < ActiveRecord::Migration
  def up
    create_table :sessions_users do |t|
      t.integer :user_id
      t.integer :session_id

      t.timestamps
    end
  end

  def down
    drop_table :sessions_users
  end
end
