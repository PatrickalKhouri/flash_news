class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :news, null: false, foreign_key: true
      t.references :video, null: false, foreign_key: true
      t.string :language
      t.string :moderation_rank

      t.timestamps
    end
  end
end
