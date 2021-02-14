class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.references :user, null: false, foreign_key: true
      t.references :news, null: false, foreign_key: true
      t.references :video, null: false, foreign_key: true
      t.string :rating

      t.timestamps
    end
  end
end
