# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.destroy_all
Score.destroy_all

daniel = Player.create(name: "Daniel")
score_1 = Score.new(score_value: 100, player_id: daniel.id)
score_1.save
score_2 = Score.new(score_value: 99, player_id: daniel.id)
score_2.save