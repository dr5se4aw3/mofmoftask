class CreateNearestStations < ActiveRecord::Migration[5.2]
  def change
    create_table :nearest_stations do |t|
      t.string :name, null: false
      t.string :raleway, null: false
      t.integer :minute, null: false
      t.references :rental_property, foreign_key: true, null: false

      t.timestamps
    end
  end
end
