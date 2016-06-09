class CreateCheckout < ActiveRecord::Migration
  def change
    create_table :checkouts do |table|
      table.belongs_to :book, null: false
    end
  end
end
