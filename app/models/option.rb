class Option < ApplicationRecord
  belongs_to :event
  has_many :results
end
