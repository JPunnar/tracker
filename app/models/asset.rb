require 'geocoder'

class Asset < ApplicationRecord
  RADIUS = 10

  def link
    "https://www.google.ee/maps/place/#{latitude}+#{longitude}"
  end

  def in_location?
    Geocoder::Calculations.distance_between("59.4099055, 24.9062221", "#{latitude}, #{longitude}") <= RADIUS
  end
end
