class CreateDetailCompatibilities < ActiveRecord::Migration[7.1]
  def change
    create_table :detail_compatibilities do |t|
      t.references :user, null: false, foreign_key: true
      t.references :compatibility, null: false, foreign_key: true

      t.timestamps
    end
  end
end
