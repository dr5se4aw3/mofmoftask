class CreateRentalProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :rental_properties do |t|
      t.string :name, null: false
      t.integer :rent, null: false
      t.text :address, null: false
      t.integer :age, null: false
      t.text :note, null: false

      t.timestamps
    end
  end
end
