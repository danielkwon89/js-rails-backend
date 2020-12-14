class RemovePlayerFromScoresTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :scores, :player_id, :integer
  end
end
