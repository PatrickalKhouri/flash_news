class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title_pt
      t.string :description_pt
      t.string :title_es
      t.string :description_es

      t.timestamps
    end
  end
end
