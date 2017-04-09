class Result < ApplicationRecord
  belongs_to :option
  belongs_to :event
  belongs_to :attr_change

end
