class Compatibility < ApplicationRecord
  has_many :detail_compatibilities
  has_many :users, through: :detail_compatibilities
end
