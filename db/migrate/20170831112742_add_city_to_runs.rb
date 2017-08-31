class AddCityToRuns < ActiveRecord::Migration[5.1]
  def change
    add_column :runs, :city, :string
  end
end
