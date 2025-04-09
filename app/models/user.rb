class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :places, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :detail_compatibilities, dependent: :destroy
  has_many :compatibilities, through: :detail_compatibilities

  # validates :first_name, :last_name, :email, :password, :birth_date, :gender, :bio, :ocupation, presence: true

  def self.find_compatible_users(current_user)
    current_user_compatibility_ids = current_user.compatibility_ids

      self.where.not(id: current_user.id).map do |user|
      shared_ids = user.compatibility_ids & current_user_compatibility_ids
      total = current_user_compatibility_ids.size
      match_percentage = (shared_ids.size.to_f / total * 100).round

      {
        user: user,
        shared_compatibilities: shared_ids,
        match_percentage: match_percentage
      }
    end.sort_by { |match| -match[:match_percentage] }
  end
end
