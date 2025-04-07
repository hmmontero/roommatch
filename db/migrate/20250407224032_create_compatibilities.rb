class CreateCompatibilities < ActiveRecord::Migration[7.1]
  def change
    create_table :compatibilities do |t|
      t.string :title

      t.timestamps
    end
  end
end
