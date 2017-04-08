class Result < ApplicationRecord
  belongs_to :option
  belongs_to :event
  has_many :attr_changes
end
