class CreateNearestStations < ActiveRecord::Migration[5.2]
  def change
    create_table :nearest_stations do |t|
      t.string :name
      t.string :raleway
      t.integer :minute
      t.references :rental_property, foreign_key: true

      t.timestamps
    end
  end
end
