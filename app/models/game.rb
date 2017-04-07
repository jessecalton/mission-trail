class Game < ApplicationRecord
  belongs_to :user
  validates :player_name, :occupation, presence: true

  def attr_changer(hash)

  end

end
