class Scoreboard < ApplicationRecord
  validates :initials, :score, presence:true
  validates :initials, length: {maximum: 3}

end
