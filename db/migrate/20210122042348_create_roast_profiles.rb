class CreateRoastProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :roast_profiles do |t|
      t.string :coffee
      t.date :date
      t.float :batch_size
      t.time :time
      t.float :temp
      t.boolean :is_celsius
      t.integer :user_id

      t.timestamps
    end
  end
end
