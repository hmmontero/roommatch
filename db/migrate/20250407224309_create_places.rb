class CreatePlaces < ActiveRecord::Migration[7.1]
  def change
    create_table :places do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.integer :available_rooms
      t.float :price
      t.string :title
      t.text :description
      t.string :type
      t.date :available_date
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
