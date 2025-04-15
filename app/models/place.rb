class Place < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :title, presence: true, length: { maximum: 255 }
  validates :place_type, presence: true, inclusion: { in: ['Casa', 'Departamento', 'Habitación', 'Loft'] }
  validates :description, presence: true
  validates :address, presence: true
  validates :available_rooms, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :available_date, presence: true, date: { after_or_equal_to: Date.today }
  has_many_attached :photos
end
