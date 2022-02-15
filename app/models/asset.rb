# frozen_string_literal: true

require 'geocoder'

class Asset < ApplicationRecord
  RADIUS = 10
  TALLINN_COORDINATES = '59.4827913, 24.7016877'

  before_save :check_location

  def check_location
    notify if in_location?
  end

  def link
    "https://www.google.ee/maps/place/#{latitude}+#{longitude}"
  end

  def in_location?
    Geocoder::Calculations.distance_between(TALLINN_COORDINATES, "#{latitude}, #{longitude}") <= RADIUS
  end

  def notify; end
end
