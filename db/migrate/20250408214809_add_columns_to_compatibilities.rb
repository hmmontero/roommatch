class AddColumnsToCompatibilities < ActiveRecord::Migration[7.1]
  def change
    add_column :compatibilities, :icon, :string
    add_column :compatibilities, :title_spanish, :string
  end
end
