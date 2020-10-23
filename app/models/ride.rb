class Ride < ApplicationRecord
  validates_presence_of :name
  belongs_to :amusement_park
end
