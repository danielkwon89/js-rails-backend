class AddPlayerToScoresTable < ActiveRecord::Migration[6.0]
  def change
    add_reference :scores, :player, foreign_key: true
  end
end
