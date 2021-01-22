class CreateRoastEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :roast_events do |t|
      t.string :name
      t.time :time
      t.temp :temp
      t.integer :roast_profile_id

      t.timestamps
    end
  end
end
