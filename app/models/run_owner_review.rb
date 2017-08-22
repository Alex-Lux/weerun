class RunOwnerReview < ApplicationRecord
  belongs_to :user
  belongs_to :run
  validates :review, presence: true
  validates :rating, presence: true, inclusion: { in: [1, 2, 3, 4, 5], allow_nil: false }
end
