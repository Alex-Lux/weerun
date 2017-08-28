class RemoveDistanceFromRuns < ActiveRecord::Migration[5.1]
  def change
    remove_column :runs, :distance, :integer
  end
end
