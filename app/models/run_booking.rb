class RunBooking < ApplicationRecord
  belongs_to :user
  belongs_to :run
  has_many :runner_reviews
end
