class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_many :messages, dependent: :destroy

  enum status: {
    pending: 0,
    approved: 1,
    rejected: 2
  }
end
