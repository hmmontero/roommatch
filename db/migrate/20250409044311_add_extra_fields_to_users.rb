class AddExtraFieldsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :first_name, :string unless column_exists?(:users, :first_name)
    add_column :users, :last_name, :string unless column_exists?(:users, :last_name)
    add_column :users, :birth_date, :date unless column_exists?(:users, :birth_date)
    add_column :users, :gender, :string unless column_exists?(:users, :gender)
    add_column :users, :bio, :text unless column_exists?(:users, :bio)
    add_column :users, :occupation, :string unless column_exists?(:users, :occupation)
    add_column :users, :industry, :string unless column_exists?(:users, :industry)
  end
end
