class CreateRuns < ActiveRecord::Migration[5.1]
  def change
    create_table :runs do |t|
      t.string :name
      t.datetime :date_time
      t.text :description
      t.integer :pace
      t.string :incline
      t.integer :elevation_gain
      t.string :terrain
      t.boolean :all_weather
      t.integer :group_number
      t.string :language_spoken
      t.integer :distance
      t.string :location
      t.string :group_type
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
