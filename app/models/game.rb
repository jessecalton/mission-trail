class Game < ApplicationRecord
  validates :username, :occupation, presence: true

end
