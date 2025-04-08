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
end
