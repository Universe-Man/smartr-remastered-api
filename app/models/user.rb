class User < ApplicationRecord

  has_many :scores, :dependent => :destroy

  # NOTE: add this prevented the seed file from working, will need to investigate in the future

  # attr_accessor :username, :first_name, :last_name, :password, :email, :games_played, :lifetime_score

  # def initialize(self, username, first_name, last_name, password, email, games_played, lifetime_score)
  #   @username = username
  #   @first_name = first_name
  #   @last_name = last_name
  #   @password = password
  #   @email = email
  #   @games_played = games_played
  #   @lifetime_score = lifetime_score
  # end
end
