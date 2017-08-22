class User < ApplicationRecord
  has_many :runs, :run_bookings :run_owner_reviews, :runner_reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  validates :first_name, presence: true
  validates :last_name, presence: true, length: { minimum: 2 }
  validates :email, uniqueness: true, presence: true, format: { with: /\A.*@.*\.com\z/ }
  validates :phone_number, presence: true
  validates :language_spoken, presence: true
  validates :birthdate, presence: true
  validates :description, presence: true
  validates :gender, presence: true
  validates :pace, presence: true
  validates :photo, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
