class ScoreSerializer
  include FastJsonapi::ObjectSerializer
  attributes :score_value, :player_id, :player
  # belongs_to :player
end
