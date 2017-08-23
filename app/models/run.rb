class Run < ApplicationRecord
  belongs_to :user
  has_many :users, through: :run_bookings
  has_many :run_bookings, dependent: :destroy
  has_many :run_owner_reviews

  validates :date_time, presence: true
  validates :name, presence: true
  validates :pace, presence: true
  validates :incline, presence: true
  validates :distance, presence: true
  validates :location, presence: true
  validates :group_number, presence: true

  mount_uploader :photo, PhotoUploader

end
