class Event < ApplicationRecord
  belongs_to :game
  has_many :options
  has_many :results
end
