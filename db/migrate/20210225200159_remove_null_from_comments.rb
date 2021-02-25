class RemoveNullFromComments < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:comments, :video_id, true)
    change_column_null(:comments, :news_id, true)
    #Ex:- :null => false
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
