class Boat < ApplicationRecord
  has_one_attached :photo

  belongs_to :user
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 100 }
  validates :capacity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :location, presence: true
  validates :photo, presence: true
end
