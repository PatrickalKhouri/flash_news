class ChangeEvaluationName < ActiveRecord::Migration[6.0]
  def change
    rename_column :grades, :evaluation, :rating
  end
end
