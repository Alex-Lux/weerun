class AddAttributesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :language_spoken, :string
    add_column :users, :birthdate, :date
    add_column :users, :description, :text
    add_column :users, :gender, :string
    add_column :users, :pace, :integer
    add_column :users, :photo, :string
  end
end
