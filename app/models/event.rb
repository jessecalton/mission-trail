class Event < ApplicationRecord
  has_many :options
  has_many :results
  belongs_to :attr_change


  scope :local, -> { where("name LIKE 'local%'") }

  scope :seen_locals, -> { where("name LIKE 'local%'").where(seen?: true) }

  scope :tinder, -> { where("name LIKE '%tinder'") }

  scope :seen_tinder, -> { where("name LIKE '%tinder'").where(seen?: true) }

  scope :instagram, -> { where("name LIKE '%insta'") }

  scope :google_maps, -> { where("name LIKE '%-map'") }

  scope :seen_google_maps, -> { where("name LIKE '%-map'").where(seen?: true) }

  # scope :trail, -> { where(options_count?: true).where(seen?: false) }

  def self.reset_locals
    local.each do |event|
      event.update_attributes(seen?: false)
    end
  end

  def self.reset_tinder
    tinder.each do |event|
      event.update_attributes(seen?: false)
    end
  end

  def self.reset_instagram
    instagram.each do |event|
      event.update_attributes(seen?: false)
    end
  end

  def self.reset_google_maps
    google_maps.each do |map|
      map.update_attributes(seen?: false)
    end
  end
end
