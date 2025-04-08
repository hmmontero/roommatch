class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_many :messages, dependent: :destroy
end
