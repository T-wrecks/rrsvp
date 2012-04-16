class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :event_id
      t.timestamp :date
      t.string :location

      t.timestamps
    end
  end
end
