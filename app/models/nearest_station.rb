class NearestStation < ApplicationRecord
  belongs_to :rental_property
  validates :raleway, presence: true
  validates :name, presence: true
  validates :minute, presence: true
end
