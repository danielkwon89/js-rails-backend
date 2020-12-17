class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :score_value
      t.integer :player_id
      t.string :quizDifficulty
      
      t.timestamps
    end
  end
end
