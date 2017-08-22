class CreateRunOwnerReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :run_owner_reviews do |t|
      t.text :review
      t.integer :rating
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
