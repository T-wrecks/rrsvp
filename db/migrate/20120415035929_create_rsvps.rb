class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.integer :user_id
      t.integer :session_id

      t.timestamps
    end
  end
end
