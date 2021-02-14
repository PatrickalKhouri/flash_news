class CreateNews < ActiveRecord::Migration[6.0]
  def change
    create_table :news do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title_pt
      t.string :content_pt
      t.string :content_es
      t.string :title_es

      t.timestamps
    end
  end
end
