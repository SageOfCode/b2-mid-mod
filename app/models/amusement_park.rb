class AmusementPark < ApplicationRecord
  validates_presence_of :name, :price_of_admission
  has_many :rides

  def average_thrill
    rides.average(:thrill_rating)
  end
  

end
