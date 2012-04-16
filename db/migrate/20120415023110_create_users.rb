class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :address
      t.string :address2
      t.string :state
      t.string :zip
      t.string :email
      t.string :hphone
      t.string :cphone
      t.text :message
      t.text :special
      t.integer :partysize
      t.integer :childrencount
      t.string :childrenages
      t.timestamp :registrationdate
      t.timestamp :loggedin
      t.timestamp :loggedout
      t.string :usertype
      t.string :memberid

      t.timestamps
    end
  end
end
