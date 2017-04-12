class Event < ApplicationRecord
  has_many :options
  has_many :results
  belongs_to :attr_change


  scope :local, -> { where("name LIKE 'local%'").where(seen?: false) }

  scope :seen_locals, -> { where("name LIKE 'local%'").where(seen?: true) }

  scope :tinder, -> { where("name LIKE '%tinder'").where(seen?: false) }

  scope :seen_tinder, -> { where("name LIKE '%tinder'").where(seen?: true) }

  scope :instagram, -> { where("name LIKE '%insta'") }

  # scope :trail, -> { where(options_count?: true).where(seen?: false) }

  def self.reset_locals
    seen_locals.update_attributes(seen?: false)
  end

  def self.reset_tinder
    seen_tinder.update_attributes(seen?: false)
  end

  def self.reset_instagram
    instagram.each do |event|
      event.update_attributes(seen?: false)
    end
  end

  # def options_count?
  #   return !!self.options.length
  # end
end
