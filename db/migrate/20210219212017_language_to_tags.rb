class LanguageToTags < ActiveRecord::Migration[6.0]
  def change
    remove_column :tags, :language_id
    add_column :tags, :language, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
