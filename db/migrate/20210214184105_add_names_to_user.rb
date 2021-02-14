class AddNamesToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :boolean
    add_column :users, :last_name, :boolean
  end
end
