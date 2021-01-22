class CreateRoastProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :roast_profiles do |t|
      t.string :coffee
      t.date :date
      t.float :batch_size
      t.time :times, array: true, default: []
      t.float :temps, array: true, default: []
      t.boolean :is_celsius, default: false
      t.integer :user_id

      t.timestamps
    end
  end
end
