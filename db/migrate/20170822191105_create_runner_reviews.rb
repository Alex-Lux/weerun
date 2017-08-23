class CreateRunnerReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :runner_reviews do |t|
      t.text :review
      t.integer :rating
      t.references :user, foreign_key: true
      t.references :run_booking, foreign_key: true

      t.timestamps
    end
  end
end
