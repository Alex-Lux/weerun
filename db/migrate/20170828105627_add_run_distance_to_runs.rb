class AddRunDistanceToRuns < ActiveRecord::Migration[5.1]
  def change
    add_column :runs, :run_distance, :integer
  end
end
