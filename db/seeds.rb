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

Rails.logger.info "Seeding Database"

User.create({
  username: "user_1",
  first_name: "John",
  last_name: "Regular",
  password: "pw_1",
})

User.create({
  username: "user_2",
  first_name: "Jeff",
  last_name: "Cool",
  password: "pw_2",
})

User.create({
  username: "user_3",
  first_name: "Ellen",
  last_name: "Lame",
  password: "pw_3",
})

Rails.logger.info "Database Seeded"