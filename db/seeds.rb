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
})

user_2 = User.create({
  username: "user_2",
  first_name: "Jeff",
  last_name: "Cool",
  password: "pw_2",
})

user_3 = User.create({
  username: "user_3",
  first_name: "Ellen",
  last_name: "Lame",
  password: "pw_3",
})

Score.create({
  user_id: user_1.id,
  score: 280,
  time: 400,
})

Score.create({
  user_id: user_2.id,
  score: 340,
  time: 460,
})

Score.create({
  user_id: user_3.id,
  score: 120,
  time: 780,
})

Rails.logger.info "Database Seeded"