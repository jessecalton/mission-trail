class Event < ApplicationRecord
  has_many :options
  has_many :results
  belongs_to :attr_change

end
