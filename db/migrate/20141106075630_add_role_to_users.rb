class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string, limit: 16
  end
end
