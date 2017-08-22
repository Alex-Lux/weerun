class User < ApplicationRecord
  has_many :runs, :run_bookings :run_owner_reviews, :runner_reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
