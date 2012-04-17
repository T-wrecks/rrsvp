class CreateUserSessions < ActiveRecord::Migration
  def up
    create_table :users_sessions do |t|
      t.integer :user_id
      t.integer :session_id

      t.timestamps
    end
  end

  def down
    drop_table :users_sessions
  end
end
