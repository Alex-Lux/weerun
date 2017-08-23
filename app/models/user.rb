class User < ApplicationRecord
  has_many :runs
  has_many :run_bookings
  has_many :run_owner_reviews, dependent: :destroy
  has_many :runner_reviews, through: :run_bookings, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable



  #validates :first_name, presence: true
  #validates :last_name, presence: true, length: { minimum: 2 }
  validates :email, uniqueness: true, presence: true, format: { with: /\A.*@.*\.com\z/ }
  #validates :phone_number, presence: true
  #validates :language_spoken, presence: true
  #validates :birthdate, presence: true
  #validates :description, presence: true
  #validates :gender, presence: true
  #validates :pace, presence: true
  #validates :photo, presence: true


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :photo, PhotoUploader
end
