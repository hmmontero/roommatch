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
  has_one_attached :photo

  # validates :first_name, :last_name, :email, :password, :birth_date, :gender, :bio, :ocupation, presence: true

  def self.find_compatible_users(current_user)
    current_user_compatibilities = current_user.compatibilities.pluck(:id)
    return [] if current_user_compatibilities.empty?

    User.where.not(id: current_user.id).includes(:compatibilities).map do |user|
      user_compatibilities = user.compatibilities.pluck(:id)
      next if user_compatibilities.empty?

      shared = (current_user_compatibilities & user_compatibilities).size
      total_possible = [current_user_compatibilities.size, user_compatibilities.size].min
      match_percentage = (shared.to_f / total_possible * 100).round

      {
        user: user,
        shared_compatibilities: Compatibility.where(id: (current_user_compatibilities & user_compatibilities)),
        match_percentage: match_percentage
      }
    end.compact.sort_by { |match| -match[:match_percentage] }
  end

  def compatibility_percentage_with(other_user)
    return 0 if self == other_user

    my_compat = compatibilities.pluck(:id)
    other_compat = other_user.compatibilities.pluck(:id)
    return 0 if my_compat.empty? || other_compat.empty?

    shared = (my_compat & other_compat).size
    total_possible = [my_compat.size, other_compat.size].min
    (shared.to_f / total_possible * 100).round
  end
end
