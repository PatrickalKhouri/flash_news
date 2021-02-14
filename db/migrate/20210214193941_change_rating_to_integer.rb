class ChangeRatingToInteger < ActiveRecord::Migration[6.0]
  def change
    add_column :grades, :evaluation, :integer
    remove_column :grades, :rating, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
