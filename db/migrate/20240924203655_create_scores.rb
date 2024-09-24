class CreateScores < ActiveRecord::Migration[7.2]
  def change
    create_table :scores do |t|
      t.integer :score
      t.integer :time

      t.timestamps
    end
  end
end
