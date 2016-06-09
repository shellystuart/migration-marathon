class AddFullName < ActiveRecord::Migration
  def up
    remove_column :readers, :full_name
  end
  def down
    add_column :readers, :full_name, :string, null: false
  end
end
