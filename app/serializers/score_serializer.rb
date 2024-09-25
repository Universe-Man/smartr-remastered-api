class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :score, :time, :difficulty, :category, :questions, :user_id
end
