class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :subheading
      t.text :disclaimer

      t.timestamps
    end
  end
end
