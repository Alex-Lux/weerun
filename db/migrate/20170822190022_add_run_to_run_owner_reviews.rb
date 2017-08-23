class AddRunToRunOwnerReviews < ActiveRecord::Migration[5.1]
  def change
    add_reference :run_owner_reviews, :run, foreign_key: true
  end
end
