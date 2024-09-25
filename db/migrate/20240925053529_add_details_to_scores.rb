class AddDetailsToScores < ActiveRecord::Migration[7.2]
  def change
    add_column :scores, :difficulty, :string
    add_column :scores, :category, :string
    add_column :scores, :questions, :integer
  end
end
