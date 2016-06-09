class AddFirstName < ActiveRecord::Migration
  def change
    add_column :readers, :first_name, :string, null: false
    add_column :readers, :last_name, :string, null: false

  end
end
