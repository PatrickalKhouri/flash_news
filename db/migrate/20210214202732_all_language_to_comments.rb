class AllLanguageToComments < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :language
    add_reference :comments, :language
  end
end
