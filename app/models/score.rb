class Score < ApplicationRecord

  belongs_to :user

  # NOTE: add this prevented the seed file from working, will need to investigate in the future

  # attr_accessor :score, :time, :difficulty, :category, :questions
  # attr_reader :user_id

  # def initialize(score, time, difficulty, category, questions, user_id)
  #   @score = score
  #   @time = time
  #   @difficulty = difficulty
  #   @category = category
  #   @questions = questions
  #   @user_id = user_id
  # end
end
