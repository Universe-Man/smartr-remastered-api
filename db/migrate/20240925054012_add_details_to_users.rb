class AddDetailsToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :email, :string
    add_column :users, :games_played, :integer
    add_column :users, :lifetime_score, :integer
  end
end
