class Run < ApplicationRecord
  belongs_to :user
  has_many :users, through: :run_bookings
  has_many :run_bookings, dependent: :destroy
  has_many :run_owner_reviews

  # validates :date_time, presence: true
  # validates :name, presence: true
  # validates :pace, presence: true
  # # validates :incline, presence: true
  # validates :run_distance, presence: true
  # validates :location, presence: true
  # validates :group_number, presence: true

  mount_uploader :photo, PhotoUploader

  geocoded_by :location
  after_validation :geocode, if: :location_changed?

  reverse_geocoded_by :latitude, :longitude, :address => :city

  after_validation :reverse_geocode, if: :location_changed?

  after_validation :get_city, if: :location_changed?


  def get_city
    if self.city
      self.city = self.city.split(",")[1].gsub(/[0-9-,][^a-zA-Z\s]/, "")
    end
  end
end
