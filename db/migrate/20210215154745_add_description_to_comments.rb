class AddDescriptionToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :description, :string
    change_column_default :comments, :moderation_rank, "Low"
  end
end
