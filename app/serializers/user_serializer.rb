class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :email, :games_played, :lifetime_score
  has_many :scores

  def full_name
    "#{self.object.first_name} #{self.object.last_name}"
  end
end
