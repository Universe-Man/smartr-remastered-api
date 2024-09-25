# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Rails.logger.info "Destroying Database Data"

User.destroy_all
Score.destroy_all

Rails.logger.info "Seeding Database"

user_1 = User.create({
  username: "user_1",
  first_name: "John",
  last_name: "Regular",
  password: "pw_1",
  email: "1@1.com",
  games_played: 4,
  lifetime_score: nil,
})

user_2 = User.create({
  username: "user_2",
  first_name: "Jeff",
  last_name: "Cool",
  password: "pw_2",
  email: "2@2.com",
  games_played: 7,
  lifetime_score: nil,
})

user_3 = User.create({
  username: "user_3",
  first_name: "Ellen",
  last_name: "Lame",
  password: "pw_3",
  email: "3@4.com",
  games_played: 9,
  lifetime_score: nil,
})

Score.create({
  user_id: user_1.id,
  score: 280,
  time: 400,
  difficulty: "Hard",
  category: "History",
  questions: 25
})

Score.create({
  user_id: user_2.id,
  score: 340,
  time: 460,
  difficulty: "Easy",
  category: "Art",
  questions: 15
})

Score.create({
  user_id: user_3.id,
  score: 120,
  time: 780,
  difficulty: "Medium",
  category: "Sports",
  questions: 10
})

Score.create({
  user_id: user_2.id,
  score: 540,
  time: 660,
  difficulty: "Hard",
  category: "Politics",
  questions: 22
})

Score.create({
  user_id: user_3.id,
  score: 520,
  time: 900,
  difficulty: "Medium",
  category: "History",
  questions: 44
})

Rails.logger.info "Database Seeded"