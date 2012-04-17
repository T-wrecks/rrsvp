class DeleteRsvps < ActiveRecord::Migration
  def up
    drop_table :rsvps
  end

  def down
    create_table :rsvps do |t|
      t.integer :user_id
      t.integer :session_id

      t.timestamps
    end
  end
end
