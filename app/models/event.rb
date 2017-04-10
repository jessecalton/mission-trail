class Event < ApplicationRecord
  has_many :options
  has_many :results
  belongs_to :attr_change


  scope :local, -> { where("name LIKE 'local%'").where(seen?: false) }

  # scope :trail, -> { where(options_count?: true).where(seen?: false) }

  def self.reset_locals
    local.updates_attributes(seen?: false)
  end

  # def options_count?
  #   return !!self.options.length
  # end
end
